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
import BZipper

import Control.Monad

data SymbolTable = SymbolTable {
  mMap :: Map.Map Name MoofParse.Line,
  fMap :: Map.Map Name MoofParse.Line,
  aMap :: Map.Map Name MoofParse.Line,
  defLine :: Moof.Line
  }

    