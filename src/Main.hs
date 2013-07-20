import MoofParse
import MoofLexer
import PostIndent
import System.IO
import IndentParse

main = do
  line <- getLine
  let tokens = moofScanTokens line
  print tokens
  let parse_tree = indentParse tokens 
  print parse_tree
  

  

