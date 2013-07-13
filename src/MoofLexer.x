{
module MoofLexer where
}

%wrapper "posn"


$digit = 0-9    
$alpha = [a-zA-Z]                              
@booleans = "True" | "False"

tokens :-
    "//".*                             ;
    "True"                             { mkT T_Bool }
    "False"                            { mkT T_Bool }
    "if"                               { mkT T_If }
    "elif"                             { mkT T_Elif }
    "else"                             { mkT T_Else}
    "("                                { mkT T_LParen }
    ")"                                { mkT T_RParen }
    "{"   			       { mkT T_LCurly }
    "}"   			       { mkT T_RCurly }
    ","                                { mkT T_Comma }
    $alpha [$alpha $digit \_ \']*      { mkT T_Name }
    [A-Z] [$alpha $digit \_ \']*       { mkT T_TName }
    "="                                { mkT T_Assignment }
    $digit+                            { mkT T_Integer }
    "-"$digit+                         { mkT T_Integer }
    \" .* \"                           { mkT T_String }
    ";"				       { mkT T_SemiColon }
    " "			               { mkT T_White }
    "\t"			       { mkT T_Tab }
    "\n"			       { mkT T_NewLine }
    "\r"			       { mkT T_NewLine }
    
{

-- The token type:
data TokType =    
     T_Name	       |
     T_TName	       |
     T_Assignment      |
     T_Integer	       |
     T_Bool            |
     T_If              |
     T_Elif            |
     T_Else            |
     T_LParen          |
     T_RParen          |
     T_String          |
     T_LCurly	       |
     T_RCurly	       |
     T_Comma           |
     T_SemiColon       |
     T_White	       |
     T_NewLine	       |
     T_Tab	       |
     T_ERROR
           deriving (Eq,Show)	

data Token = Token { 
       tokenAlxPos::AlexPosn
     , tokenText::String 
     , tokenType::TokType      
}  deriving (Eq, Show)

mkT t p s = Token p s t

tokLine (Token (AlexPn _ lin _) _ _) = lin
tokCol (Token (AlexPn _ _ col) _ _) = col
tokPos (Token (AlexPn pos _ _) _ _) = pos

space_num = 4

moofScanTokens :: String -> [Token]
moofScanTokens str = tabsToSpaces space_num (go (alexStartPos,'\n',[],str))
  where go inp@(pos,_,_,str) =
          case alexScan inp 0 of
                AlexEOF -> []
                AlexError (pos, prev_char, _, ipStr) -> [Token pos ipStr T_ERROR]
                AlexSkip  inp' len     -> go inp'
                AlexToken inp' len act -> act pos (take len str) : go inp'



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

tabsToSpaces :: Int -> [Token] -> [Token]
tabsToSpaces spaces_per_tab = foldr 
  where 
    tbsp (Token p _ T_Tab) toks  = 
      [(Token p " " T_Space) | i <- [1..spaces_per_tab]]
    tbsp tk toks = tk : toks

}