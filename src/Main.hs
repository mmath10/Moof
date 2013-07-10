module Main where 
import MoofParse
import MoofLexer



main = do
  line <- getLine
  let tokens = moofScanTokens line
  print tokens
  let parse_tree = moofParse tokens
  print parse_tree

