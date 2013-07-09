{
module MoofLexer where
}

%wrapper "posn"


$digit = 0-9    
$alpha = [a-zA-Z]                              
@operators = "*" | "+" | "-"  | "/"  |
             ">=" | "<=" | "<" | ">" | 
             "or" | "and" | "xor" | "=="

@booleans = "True" | "False"

tokens :-
    "//".*                             ;
    "True"                             { mkT T_Bool }
    "False"                            { mkT T_Bool }
    "if"                               { mkT T_If }
    "else"                             { mkT T_Else}
    "elif"                             { mkT T_Elif }
    "("                                { mkT T_LParen }
    ")"                                { mkT T_RParen }   
    ","                                { mkT T_Comma }
    @operators                         { mkT T_Operator }
    $alpha [$alpha $digit \_ \']*      { mkT T_Name }
    [A-Z] [$alpha $digit \_ \']*       { mkT T_TName }
    "="                                { mkT T_Assignment }
    $digit+                            { mkT T_Integer }
    "-"$digit+                         { mkT T_Integer }
    \" .* \"                           { mkT T_String }
    ":"	  			       { mkT T_Colon }
    ";"				       { mkT T_SemiColon }
    "\n"			       { mkT T_Newline }
    " "                                { mkT T_Space }
    "\t"			       { mkT T_Tab }
    
{

-- The token type:
data TokType =     
     T_Name	       |
     T_TName 	       |
     T_Operator        |
     T_Assignment      |
     T_Integer	       |
     T_Bool            |
     T_If              |
     T_Elif            |
     T_Else            |
     T_LParen          |
     T_RParen          |
     T_String          |
     T_LIndent         |
     T_RIndent         |
     T_Comma           |
     T_Newline	       |
     T_Colon	       |
     T_SemiColon       |
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

moofScanTokens :: String -> [Token]
moofScanTokens str = go (alexStartPos,'\n',[],str)
  where go inp@(pos,_,_,str) =
          case alexScan inp 0 of
                AlexEOF -> []
                AlexError (pos, prev_char, _, ipStr) -> [Token pos ipStr T_ERROR]
                AlexSkip  inp' len     -> go inp'
                AlexToken inp' len act -> act pos (take len str) : go inp'

}