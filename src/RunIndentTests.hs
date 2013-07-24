--import MoofParse
import MoofLexer
import PostIndent
--import System.IO
import qualified IndentParse as IP
--import Test.HUnit

file_list = [ "Test/Indent/func_Call.mf",
          "Test/Indent/func.mf",
          "Test/Indent/if.mf",
          "Test/Indent/multiLine.mf"
          ]



outputPretifier (PToken _ str _) = str ++ " "
outputPretifier L_Indent = "["
outputPretifier R_Indent = "]"
outputPretifier Endl = '\n' : []

main :: IO ()
main = mapM_ (\x->x) $ do
  file_name <- file_list
  return $ do
    print file_name
    filestf <- readFile file_name
    let outputStr1 = (file_name ++ "\n" ++ filestf)
    let tokens = moofScanTokens filestf
    let itoks = moofIParse tokens
    case itoks of
      Right x -> putStrLn (concat (map outputPretifier x))
      Left y -> print y



