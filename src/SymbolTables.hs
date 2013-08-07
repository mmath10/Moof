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



get_FScope moofblk = foldM add_f_symbol (Map.empty) moofblk
  where
    else_scp_list (Elif _ scp eb) = scp : (else_scp_list eb)
    else_scp_list (Else scp) = [scp]
    else_scp_list Endif = []
    
    else_Terminated (Elif _ scp eb) = (else_scp_list eb)
    else_Terminated (Else scp) = True
    else_Terminated Endif = False
    
    add_f_symbol map (FuncDef (PToken posn name _) _ _)  = do
      case (Map.lookup name map) of
        Just opsn -> Left ("Symbol " ++ (show posn) ++ " matches symbol at " ++ (show opsn))
        Nothing -> Right ()
      return (Map.insert name posn map)
    
    add_f_symbol map (If _ scp else_block) = do 
      --Get all of the scopes
      let else_scps = else_scp_lst else_block
      case (else_terminated else_block) of 
        --We can add these functions to the outer scope
        True -> do
          tmp <- get_FScope scp 
          tmp_lst <- mapM get_FScope else_scps
          ftbls <- foldl (\x y -> intersection x y) tmp tmp_lst
          return (union ftbls map)
        False -> return map
        
     add_f_symbol map _ = return map
      

get_MScope moof_block f_scps arg_scps = 


consSymbolTable :: Moof.Scope -> Either String ScopedBlock
consSymbolTable moofScp = do
  -- Generate the function scope 
  fscp <- get_FScope moofScp 
  -- Generate the mutable variable scope
  -- also checks the scope

  mscp <- get_MScope moofScp [fscp] [] 
  -- Create an annotated tree containing scope tables
  gblock <- mapM (parse_Forest fscp mscp []) moofScp  
  return (GScope gblock [SymbolTable mscp fscp Map.empty])
  
  
  
    
