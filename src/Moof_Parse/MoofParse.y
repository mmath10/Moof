{
import MoofLexer
import Control.Monad
}
%name moof

%tokentype { Token }


%monad { MoofParse } { (>>=) } { return }
%error { parseError }

%token
  name    { Token _ _ T_Name }  
  '='      { Token _ _ T_Assignment }
  int      { Token _ _ T_Integer }
  bool     { Token _ _ T_Bool }
  if       { Token _ _ T_If }
  else     { Token _ _ T_Else } 
  '('      { Token _ _ T_LParen }
  ')'      { Token _ _ T_RParen } 
  string   { Token _ _ T_String }
  ','      { Token _ _ T_Comma }
  ';'      { Token _ _ T_SemiColon }
  '{'      { Token _ _ T_LCurly }
  '}'      { Token _ _ T_RCurly }
  '['      { Token _ _ T_LBracket }
  ']'      { Token _ _ T_RBracket }

%nonassoc THEN 
%nonassoc else

%%
prog  : {- empty -}                       { [] }
      | line prog                  	  { $1 : $2 }   

scope : line	                          { [$1] }
      | '{' prog '}'                      { $2 }

line : expr ';'                           { Express $1 }
     | variableDef ';'                    { $1 }
     | if '(' expr ')' scope %prec THEN   { If $3 $5 }
     | if '(' expr ')' scope else scope   { IfE $3 $5 $7 }

variableDef : name'=' expr              { Var $1 $3 }

expr :  '(' expr ')'                      { $2 }
     | term                               { $1 }

term : '(' ')' scope                      { FDef [] $3 }
     | '(' argVar ')' scope               { FDef $2 $4 }	
     | expr '(' ')'                       { FCall $1 [] }		
     | expr '(' args ')'                  { FCall $1 $3 }	
     | '{' args '}'                       { Tuple $2 } 
     | expr '[' expr ']'                  { Index $1 $3 }
     | name                               { Literal $1 }
     | string 				  { Literal $1 }
     | bool 				  { Literal $1 }
     | int 				  { Literal $1 } 
     
argVar : name',' argVar                 { $1 : $3 }
       | name	                          { [$1] }
        
args : expr                               { [$1] }
     | expr ',' args                      { $1 : $3 }
	 
{
data Scope = Var Token Expr
	   | Express Expr 
           | If Expr [Scope] 
     	   | IfE Expr [Scope] [Scope]

data Expr = FDef [Token] [Scope]
	  | FCall Expr [Expr]
	  | Tuple [Expr]
	  | Index Expr Expr
	  | Literal Token

data MoofParse a = MoofError String | MoofParse a

instance Monad MoofParse where
  (>>=) (MoofParse a) f = f a
  (>>=) err _ = err 
  return = MoofParse

parseError tokens = MoofError "ERROR"

}
