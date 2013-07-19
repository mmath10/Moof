{
module IndentParse where
import MoofLexer
import MoofUtils
}
%name indentParse

%tokentype { Token }
%monad { Either (ErrorReport [Token]) } { (>>=) } { return }
%error { parseError }

%token
  '('      { Token _ _ T_LParen }
  ')'      { Token _ _ T_RParen } 
  '{'      { Token _ _ T_LCurly }
  '}'      { Token _ _ T_RCurly }
  '\n'     { Token _ _ T_NewLine }
  ' '      { Token _ _ T_White }
  '\t'     { Token _ _ T_Tab }
  tok      { Token _ _ _ } 

%%

prog  : {- empty -}                                { [] }
      | line prog		                   { $1 : $2 }

line : whitespace stm '\n'                         { Line $1 $2 }

whitespace : ' ' whitespace                        { 1 + $2 }
           | '\t' whitespace                       { 4 + $2 }
           | {- empty -}                           { 0 }

stm : '(' stm_z ')' stm                            { Stm $1 $2 $3 $4 }
    | '{' stm_z '}' stm                            { Stm $1 $2 $3 $4 }
    | tok stm                                      { Tk_l $1 $2 }

stm_z : '(' stm_z ')' stm_z                        { Stm $1 $2 $3 $4 }
      | '{' stm_z '}' stm_z                        { Stm $1 $2 $3 $4 }
      | tok stm_z                                  { Tk_l $1 $2 }
      | '\n' stm_z                                 { $2 }
      | {- -}                                      { Empty }

{
  
parseError tokens = Left ERROR { 
  errorMesg = "Problem while parsing" ,
  errorData = tokens 
}

data Line = Line Int Stm



data Stm = Stm Token Stm Token Stm
         | Tk_l Token Stm
	 | Empty
}

