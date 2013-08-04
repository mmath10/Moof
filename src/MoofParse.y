{
module MoofParse where
import PostIndent
}
%name moofParse

%tokentype { PToken }
%monad { Either String } { (>>=) } { return }
%error { parseError }

%token
  if       { PToken _ "if" I_Name }
  elif     { PToken _ "elif" I_Name }
  else     { PToken _ "else" I_Name }
  for      { PToken _ "for" I_Name }
  in       { PToken _ "in" I_Name }
  while    { PToken _ "while" I_Name }
  def      { PToken _ "def" I_Name }
  name     { PToken _ _ I_Name }
  tname    { PToken _ _ I_TName }
  '='      { PToken _ _ I_Assignment }
  int      { PToken _ _ I_Integer }
  bool     { PToken _ _ I_Bool }
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
      | line  prog                                        { $1 : $2 }

line : if expr ':' endl r_in prog l_in                    { If $2 $6 Endif }
     | if expr ':' endl r_in prog l_in elseB              { If $2 $6 $8 }
     | if expr ':' expr endl                              { If $2 $4 Endif }
     | if expr ':' expr endl elseB                        { If $2 $4 Endif }
     | while expr ':' r_in prog l_in                      { While $2 $5}
     | def name '(' arg_list ')' ':' expr endl            { FuncDef $2 $4 $7 }
     | def name '('  arg_list ')' ':' r_in prog l_in      { FuncDef $2 $4 $8 }
     | name '=' expr endl                                 { MVar $1 $3 }
     | expr endl                                          { Express $1 }

elseB : elif expr ':' endl r_in prog l_in elseB           { Elif $2 $6 $8 }
      | elif expr ':' expr endl elseB                     { Elif $2 $4 $6 }
      | else ':' endl r_in prog l_in                      { Else $5 }
      | else ':' expr endl                                { Else $3 }

expr : '\\' arg_list ':'  expr2                            { Lambda $2 $4 }
     | expr2                                               { $1 }

expr2 :  term '(' args ')'                                { FCall $1 $3 }
      | term                                              { $1 }

term : name                                               { Literal $1 }
     | '{' args '}'                                       { Tuple $2 }
     | string                                             { Literal $1 }
     | bool                                               { Literal $1 }
     | int                                                { Literal $1 }
     | '(' expr ')'                                       { $2 }


args : expr                                               { [$1] }
     | expr ',' args                                      { $1 : $3 }

arg_list : {--}                                           { [] }
         | a_list                                         { $1 }

a_list : name ',' a_list                                  { $1 : $3 }
       | name                                             { [$1] }

{

type Scope = [Line]

data Line =  Express Expr
           | FuncDef PToken [PToken] Scope
           | While Expr Scope
           | If Expr Scope Else
           | MVar PToken Expr
  deriving (Show, Eq)


data Else =  Elif Expr Scope Else
          |  Else Scope
          |  Endif
  deriving (Show, Eq)

data Expr = Lambda [PToken] Expr
          | FCall Expr [Expr]
          | Tuple [Expr]
          | Literal PToken
  deriving (Show, Eq)

parseError tokens = Left "Moof is crying in her lonely corner. Feel BAD"

}

