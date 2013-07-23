import MoofParse
import MoofLexer
import PostIndent
import System.IO
import IndentParse
import System.Environment(getArgs)

main = do
  args <- getArgs  
  filestf <-  readFile (args !! 0)
  let tokens = moofScanTokens filestf
  print tokens
  print ""
  print ""
  let parse_tree = indentParse tokens 
  print parse_tree
  

  

