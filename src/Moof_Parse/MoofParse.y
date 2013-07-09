{
import Char
import MoofLexer
import Control.Monad
}

%tokentype { Token }

%monad { MoofParse } { (>>=) } { return }
%error { parseError }

%token
  lname    { Token _ _ T_Name }  
  tname    { Token _ _ T_TName }
  op       { Token _ _ T_Operator }
  '='      { Token _ _ T_Assignment }
  int      { Token _ _ T_Integer }
  bool     { Token _ _ T_Bool }
  if       { Token _ _ T_If }
  elif     { Token _ _ T_Elif }
  else     { Token _ _ T_Else } 
  '('      { Token _ _ T_LParen }
  ')'      { Token _ _ T_RParen } 
  string   { Token _ _ T_String }
  ','      { Token _ _ T_Comma }
  ';'      { Token _ _ T_SemiColon }
  '{'      { Token _ _ T_LCurly }
  '}'      { Token _ _ T_RCurly }


%%

prog :: { [Scope] } 
prog : {- empty -}                        { [] }
  | sc_line prog                  	  { $1 : $3 }   
  | structure ';' prog                    { $1 : $3 }

    
structure : tname '{' fieldDec '}'        { Struct $1 $3 }

block : {- empty -}                       { [] } 
      | sc_line block            	  { $1 : $3 }

sc_line : variableDef ';'                 { $1 }
 	| expr ';'    			  { Express $1 }
	| if_c 				  { $1 }

scope : '{' block '}'                     { $2 }
      | sc_line	                          { [$1] }

variableDef : lname '=' expr              { Var $1 $3 }

expr : term                               { $1 }
     | '(' expr ')'                       { $1 }
     | term op expr                      { Op $1 $2 $3 } 

       
term : tname '(' ')'                      { SCall $1 [] } 
     | tname '(' args ')'                 { SCall $1 $3 }
     | '(' ')' scope                      { FDef [] $5 }
     | '(' argVar ')' scope               { FDef $2 $5 }	
     | term '(' args ')'                  { FCall $1 $3 }	
     | lname                              { Literal $1 }
     | string 				  { Literal $1 }
     | bool 				  { Literal $1 }
     | int 				  { Literal $1 } 


fieldDec : {- empty -}                    { [] }
         | tname ';' fieldDec             { $1 : $3 }

argVar : lname ',' argVar                 { $1 : $3 }
       | lname 	                          { [$1] }
        
args : expr                               { [] }
     | expr ',' args                      { $1 : $3 }
	 
if_c : if '(' expr ')' scope else_c       { If $2 $4 $6 }

else_c : elif '(' expr ')' scope else_c   { EliF $2 $4 $6 }
       | else scope                       { Else $3 }
       | {- empty -}                      { Endif }


{

data Scope = Struct Token [Token]
     	   | Var Token Expr
	   | Express Expr 
	   | If Expr [Scope] Elif

data Elif = Elif Expr [Scope] Elif 
     	  | Else [Scope]
          | Endif

data Expr = SCall Token 
     	  | Op Expr Token Expr
	  | FDef [Token] [Scope]
	  | FCall Token [Expr]
	  | Literal Token

data MoofParse a = MoofError String | MoofParse a

instance Monad (MoofParse a) where
  (>>=) (MoofParse a) f = f a
  (>>=) err = err
  return = MoofParse

parseError tokens = MoofError "ERROR"

}
