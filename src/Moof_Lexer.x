{
module Moof_Lexer where
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
    "struct"			       { mkT T_Struc }
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
    $white                             ;  
     
{

-- The token type:
data TokType =     
     T_Name	       |
     T_TName 	       |
     T_Operator        |
     T_Assignment      |
     T_Integer	       |
     T_Bool            |
     T_Struct 	       |
     T_If              |
     T_Elif            |
     T_Else            |
     T_LParen          |
     T_RParen          |
     T_String          |
     T_LIndent         |
     T_RIndent         |
     T_Comma           
           deriving (Eq,Show)	

data Token = Token AlexPosn String TokType
    deriving (Eq,Show)

mkT t p s = Token p s t

getTokLine (Token (AlexPn _ ln _) _) = ln
getTokCol (Token (AlexPn _ _ col) _) = col
getTok (Token _ t) = t
getPosn (Token p _) = p



}
