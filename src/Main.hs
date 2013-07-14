import MoofParse
import MoofLexer
import System.IO


main = do
  line <- getLine
  let tokens = moofScanTokens line
  print tokens
  let parse_tree = moofParse tokens
  print parse_tree
  

  

