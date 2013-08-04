--import MoofParse
--import MoofLexer
--import PostIndent
--import System.IO
--import IndentParse
--import System.Environment(getArgs)
--
--main = do
--  args <- getArgs
--  filestf <- readFile (args !! 0)
--  let tokens = moofScanTokens filestf
--  print tokens
--  print ""
--  print ""
--
--  let parse_tree = indentParse tokens
--  print parse_tree
--
--import MoofParse
import MoofLexer
import qualified PostIndent as PI
--import System.IO
--import qualified IndentParse as IP
--import Test.HUnit

file_list = [ "Test/Indent/func_Call.mf",
          "Test/Indent/func.mf",
          "Test/Indent/if.mf",
          "Test/Indent/multiLine.mf"]

outputPretifier (PI.PToken _ str _) = str ++ " "
outputPretifier PI.L_Indent = "["
outputPretifier PI.R_Indent = "]"
outputPretifier PI.Endl = '\n' : []

main :: IO ()
main = mapM_ (\x->x) $ do
  file_name <- file_list
  return $ do
    print file_name
    filestf <- readFile file_name
    let outputStr1 = (file_name ++ "\n" ++ filestf)
    let tokens = moofScanTokens filestf
    let itoks = PI.moofIParse tokens
    case itoks of
      Right x -> putStrLn (concat (map outputPretifier x))
      Left y -> print y


























