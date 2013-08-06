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

import qualified MoofParse as MoofParse
import qualified IndentParse as IndentParse
import qualified Data.Map as Map
import Data.Tree.Zipper

import Control.Monad

--Make pass of parse tree to determine
--that all variables are assigned before
--used
--Example
-- Good
-- def f(x) : x + 4
-- x = 5
-- f(x)
-- Bad
-- x = x + 4
--If we return Left "error msg" the a variable was assigned before use.
--If we return right then everything is fine.
--an error string
checkScope = foldM proc_Line (Map.empty, Map.empty)
  where 
    addArg m arg@(PToken _ n _) = Map.insert n arg m
    
    testExpr (Literal tok@(PToken _ n I_Name)) (fm, mM) = do
      case (Map.member n fM || Map.member n mM) of
        True -> Right (fm, mM)
        False -> Left (n ++ " hasn't been defined previously")      
        
    testExpr (Lambda args expr) (fm, mM) = 
      testExpr expr (foldr addArg fm args, mM)
      
    testExpr (FCall e1 es) (fm, mM) = do
      testExpr e1 (fm, mM)
      foldM testExpr (fm, mM) es
    
    testExpr (Tuple es) (fm, mM) = foldM testExpr (fm, mM) es
    
    proc_Line (While exp scp) (fMap, mMap) = do
      testExpr exp (fMap, mMap)
      proc_Line scp symTbl
    proc_Line (Express exp) (fMap, mMap) = do
      testExpr exp (fMap, mMap)
    proc_Line (FuncDef tok@(PToken _ name _) args scp) (fMap, mMap) = do
      case (Map.member name fMap || Map.member name mMap) of
        True -> Left (name ++ " already defined previously")
        False -> Right updtTbl
      let fm = Map.insert name tok (foldr addArg fmap args)
      --Test the scope block
      foldM proc_Line (fm, Data.empty) scp
      return (Map.insert name tok fMap, mMap)
    proc_Line (MVar tok@(PToken psn name _) exp) (fMap, mMap) = do
      case (Map.member name fMap || Map.member name mMap) of
        True -> Left (name ++ " already defined previously")
        False -> Right updtTbl
      testExpr exp (fMap, mMap)
      return (fMap, Map.insert name tok mMap)
    proc_Line (If exp scp else_block) (fMap, mMap) = do
      testExpr exp (fMap, mMap)
      foldM proc_Line (fMap, mMap) scp
      let 
        test_Else (Elif exp scp else_block) = do
          testExpr exp (fMap, mMap)
          foldM proc_Line (fMap, mMap) scp
          test_Else else_block
        test_Else (Else scp) = foldM proc_Line (fMap, mMap) scp
        test_Else Endif = Right (fMap, mMap)
      in (test_Else else_block)


data SymbolTable = SymbolTable {
  mMap :: Map.Map Name MoofParse.Line,
  fMap :: Map.Map Name MoofParse.Line,
  aMap :: Map.Map Name MoofParse.Line
  }


constructSymTree :: Moof.Scope -> 
constructSymTree prgscp = let
  -- Initialize the scope
  initial_scope = Scope {
    mMap = Map.empty,
    fMap = Map.empty,
    aMap = Map.empty,
    scpType = GScope,
    parentScope = 
    }
  
  testExpr (Literal tok@(PToken _ n I_Name)) scp 
    | (Map.member n (mMap scp) ||
       Map.member n (fMap scp) ||
       Map.member n (aMap scp)) = 
   case  of
     True -> Right scp
     False -> Left (n ++ " hasn't been defined previously")
  
  testExpr (Lambda args expr) scp = 
    testExpr expr (foldr addArg fm args, mM)
      
  testExpr (FCall e1 es) (fm, mM) = do
    testExpr e1 (fm, mM)
    foldM testExpr (fm, mM) es
    
  testExpr (Tuple es) (fm, mM) = foldM testExpr (fm, mM) es


  match_line scp (Express expr) = testExpr expr scp
  
  
  in foldM match_line initial_scope prgscp

    