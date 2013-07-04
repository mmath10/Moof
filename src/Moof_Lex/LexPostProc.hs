module LexPostProc where

import MoofLexer
import System.IO

-- --utility function 
-- insertIndents [] cols _ = let
--   --Map the remaining indents on the stack to indents
--   colToIndnt _ = Token posn "" T_RIndent
--   in tok : (map colToIndnt cols)
-- insertIndents (tk:tks) (ct:cts) prevtok
--   --if still on the same line
--   | (tokLine prevtok) == (tokLine tk) = tk : (insertIndents tks (ct:cts) tk)
--   --if the line is indented more than the last one 
--   | (tokCol tk) > ct) = currEl : nxtEl
--   where
--     currEl = Token (tokPos tk) "" T_LIndent
--     nxtEl = insertIndents tks (newcol : ct : cts) tk
--     newcol = tokCol tk
--   --if the line is indented less than the last line
--   | (tokCol tk) < ct = currEl : nxtEl
--   where
--     currEl = Token (tokPos tk) "" T_RIndent
--     nxtEl = insertIndents (tk:tks) cts prevtok
--   --we add as many right indices as we can
--   | otherwise = tk : insertIndents tks (ct:cts) tk
--
--
-- addIndents [] = []
-- addIndents (tk:tks) = insertIndents tk [1] tk
-- scanTokens = addIndents . moofScanTokens


reportLexErrors :: [Token] -> IO ()
reportLexErrors tokens = do 
  let checkError tk = case tk of 
        AlexError _ -> True
        _ -> False
  mapM_ errorForm tokns
    where 
      errorForm (Token (AlexPn _ lin col) ipStr T_ERROR) = do
        hPutStr stderr ("Unrecognized character: \"" ++ (head ipStr) ++ 
                        "\" at line: " ++ (show lin) ++ 
                        " at column: " ++ (show col) ++ 
                        "\n")
      errorForm _ = return ()
      

haveLexErrors :: [Token] -> Bool
haveLexErrors = foldr False errorCheck 
  where
    errorCheck (Token _ _ T_ERROR) _ = False
    errorCheck _ bool = True
        


tabsToSpaces :: Int -> [Token] -> [Token]
tabsToSpaces spaces_per_tab = foldr 
  where 
    tbsp (Token p _ T_Tab) toks  = 
      [(Token p " " T_Space) | i <- [1..spaces_per_tab]]
    tbsp tk toks = tk : toks
    

