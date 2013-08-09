-----------------------------------------------------------------------------
--
-- Module      :  SymbolTables
-- Copyright   :
-- License     :  LGPL (Just (Version {versionBranch = [3], versionTags = []}))
--
-- Maintainer  :  micmath@udel.edu
-- Stability   :
-- Portability :
--
-- |
--
-----------------------------------------------------------------------------

module SymbolTables where

import qualified MoofParse 
import qualified IndentParse as IndentParse
import qualified Data.Map as Map
import Data.List
import Control.Monad

data ScopedBlock = 
  GScope [ScopedBlock] ScopeTables |
  FuncDefS PToken [PToken] [ScopedBlock]  ScopeTables |
  WhileS Expr [ScopedBlock] ScopeTables |
  IfS [(Expr, Scope)] [ScopedBlock] ScopeTables |
  MVarS PToken Expr |
  ExpressS ExprS
  deriving (Show, Eq)

data ExprS = LambdaS [PToken] ExprS ScopeTables
          | FCallS ExprS [ExprS]
          | TupleS [ExprS]
          | LiteralS PToken
  deriving (Show, Eq)


type ScopeTables = [SymbolTable]

data SymbolTable = SymbolTable {
  mMap :: Map.Map String AlexPosn,
  fMap :: Map.Map String AlexPosn,
  aMap :: Map.Map String AlexPosn
  }

--scpMember :: ByteString.ByteString -> [Map.Map AlexPosn] -> Maybe AlexPosn
scpMember name (x:xs) = case (Map.lookup name x) of
  Nothing -> (scpMember name xs)
  x -> x
scpMember _ _ = Nothing

else_scp_list (Elif _ scp eb) = scp : (else_scp_list eb)
else_scp_list (Else scp) = [scp]
else_scp_list Endif = []

else_Terminated (Elif _ scp eb) = (else_scp_list eb)
else_Terminated (Else scp) = True
else_Terminated Endif = False


get_FScope moofblk arg_scope = foldM add_f_symbol (Map.empty) moofblk
  where    
    add_f_symbol tbl (FuncDef (PToken posn name _) _ _)  = do
      case (Map.lookup name tbl) of
        Just opsn -> 
          Left ("Symbol " ++ (show posn) ++ " matches symbol at " ++ (show opsn))
        Nothing -> 
          return ()
      case arg_scope of 
        [] -> return ()
        (x:_) -> when (Map.member name x) $ do 
          Left ("Function " ++ (show name) ++ "previously defined as argument " ++ (show posn)
      return (Map.insert name posn tbl)
    
    add_f_symbol tbl (If _ scp else_block) = do 
      --Get all of the scopes
      let else_scps = else_scp_lst else_block
      case (else_terminated else_block) of 
        --We can add these functions to the outer scope
        True -> do
          tmp <- get_FScope scp arg_scope
          tmp_lst <- mapM (\x -> get_FScope x arg_scope) else_scps
          let ftbls = foldl Map.intersection tmp tmp_lst
          return (Map.union ftbls tbl)
        False -> return tbl
    
     add_f_symbol tbl _ = return tbl
      
get_MScope moof_block initial_scp f_scp arg_scps = let 
  verify_Expr ascp tbl (Lambda args exp) = do
    let foldFunc = \(PToken pos name _) tbl -> Map.insert name pos tbl
    let new_atbl = foldr foldFunc tbl args
    verify_Expr (new_atbl:ascp) tbl expr
      
  verify_Expr ascp tbl (FCall expr exprs) = mapM (verify_Expr tbl ascp) (expr:exprs)
    
  verify_Expr ascp tbl (Tuple exprs) = mapM (verify_Expr tbl ascp) exprs
    
  verify_Expr ascp tbl (Literal (PToken pos name I_Name)) = do
    unless (Map.member name tbl || Map.member name ascp) $ do
      Left (name ++ " not defined at " ++ (show pos))
      
  verify_Expr ascp tbl _ = return ()

  
  verify_Line tbl (Express expr) = verify_Expr arg_scps tbl expr
  
  verify_Line tbl (MVar (PToken pos name _) expr)= do    
    --Check the function scope for a duplicate name
    case (f_scp) of 
      [] -> return ()
      (x:_) -> when (Map.member name x) $ do
        Left "Duplicate definitions for " ++ name ++ " at " ++ (show pos)
    
    --Check the arguments for a duplicate name
    case (arg_scps) of 
      [] -> return ()
      (x:_) -> when (Map.member name x) $ do
        Left "Duplicate definitions for " ++ name ++ " at " ++ (show pos)
        return ()
    
    --Check the mutable variable scope for duplicate name
    case (Map.member name tbl) of 
      False -> return (Map.insert name pos tbl)
      True -> return tbl
  
  --We add all MVars that are defined in all scopes of the if elif else 
  verify_Line tbl (If expr scp else_block) = do
    verify_Expr arg_scps tbl expr
    case  (else_Terminated else_block) of 
      True -> do 
        let tmp_lst = scp : else_scp_list else_block
        tmp1 <- mapM (\x -> get_MScope x tbl f_scp arg_scps) tmp_lst
        let mtbls = foldl1 Map.intersection tmp_lst
        return (Map.union mtbls tbl)
      False -> return tbl

  verify_Line tbl (While expr scp) = do
    verify_Expr arg_scps tbl expr 
    return tbl
  
  in foldM verify_Line initial_scp moof_block

consSymbolTable :: Moof.Scope -> Either String ScopedBlock
consSymbolTable moofScp = do
  -- Generate the function scope 
  fscp <- get_FScope moofScp []
  -- Generate the mutable variable scope
  -- also checks the scope

  mscp <- get_MScope moofScp Map.empty [fscp] [] 
  -- Create an annotated tree containing scope tables
  gblock <- MapM (parse_Forest fscp mscp []) moofScp  
  return (GScope gblock [SymbolTable mscp fscp Map.empty])
  
  
  
    
