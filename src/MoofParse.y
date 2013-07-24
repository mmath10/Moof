{
module MoofParse where
import PostIndent
}
%name moofParse

%tokentype { PToken }
%monad { Either String } { (>>=) } { return }
%error { parseError }

%token
  def      { PToken _ _ I_Def }
  name     { PToken _ _ I_Name }
--  tname    { PToken _ _ I_TName }
  '='      { PToken _ _ I_Assignment }
  int      { PToken _ _ I_Integer }
  bool     { PToken _ _ I_Bool }
  if       { PToken _ _ I_If }
  elif     { PToken _ _ I_If }
  else     { PToken _ _ I_Else }
  '('      { PToken _ _ I_LParen }
  ')'      { PToken _ _ I_RParen }
  string   { PToken _ _ I_String }
  '{'      { PToken _ _ I_LCurly }
  '}'      { PToken _ _ I_RCurly }
  ','      { PToken _ _ I_Comma }
  ':'      { PToken _ _ I_Colon }
  ';'      { PToken _ _ I_SemiColon }
  '\\'     { PToken _ _ I_Slash }
   r_in    { R_Indent }
   l_in    { L_Indent }
   endl    { Endl }

%%
prog  : {- empty -}                                       { [] }
      | line  prog		                          { $1 : $2 }
      | expr_list endl prog                               { $1 ++ $3 }

line : if expr ':' endl r_in prog l_in                    { If $2 $6}
     | if expr ':' endl r_in prog l_in elseB              { Ifs $2 $6 $8}
     | if expr ':' expr_list endl                         { If $2 $4 }
     | if expr ':' expr_list endl elseB                   { Ifs $2 $4 $6 }
     | def name '(' arg_list ')' ':' expr_list endl       { FuncDef $2 $4 $7 }
     | def name '(' arg_list ')' ':' r_in prog l_in       { FuncDef $2 $4 $8 }


elseB : elif expr ':' endl r_in prog l_in elseB           { Elif $2 $6 $8 }
      | elif expr ':' expr_list endl elseB                { Elif $2 $4 $6 }
      | else ':' endl r_in prog l_in                      { Else $5 }
      | else ':' expr_list endl                           { Else $3 }

expr_list : expr ';' expr_list                            { (Expr $1) : $3 }
          | expr                                          { [Expr $1] }
          | expr ';'                                      { [Expr $1] }
          | decl ';' expr_list                            { $1 : $3 }
          | decl                                          { [$1] }
          | decl ';'                                      { [$1] }

expr : '(' expr ')'                                       { $2 }
     | term                                               { $1 }

term : name                                               { Literal $1 }
     | '\\' arg_list ':' '{' expr_list '}'                { FDef $2 $5 }
     | expr '(' args ')'                                  { FCall $1 $3 }
     | '{' args '}'                                       { Tuple $2 }
     | string                                             { Literal $1 }
     | bool                                               { Literal $1 }
     | int                                                { Literal $1 }

decl : name '=' expr                                      { Decl $1 $3 }

args : expr                                               { [$1] }
     | expr ',' args                                      { $1 : $3 }

arg_list : {--}                                            { [] }
         | a_list                                         { $1 }

a_list : name ',' a_list                                  { $1 : $3 }
       | name                                             { [$1] }

{
data Scope = Decl PToken Expr
           | Expr Expr
           | FuncDef PToken [PToken] [Scope]
           | Ifs Expr [Scope] Else
           | If  Expr [Scope]
  deriving (Show, Eq)

data Else =  Elif Expr [Scope] Else
         | Else [Scope]
  deriving (Show, Eq)

data Expr = FDef [PToken] [Scope]
          | FCall Expr [Expr]
          | Tuple [Expr]
          | Index Expr Expr
          | Literal PToken
  deriving (Show, Eq)

parseError tokens = Left "Moof is crying in her lonely corner. Feel BAD"
}

