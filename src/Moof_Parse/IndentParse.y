{
module IndentParse where
import MoofLexer
}
%name IndentParse

%tokentype { Token }


%monad { Either String } { (>>=) } { return }
%error { parseError }

%token
  tok      { Token _ _ T_Name }  
  tok      { Token _ _ T_TName }  
  tok      { Token _ _ T_Assignment }
  tok      { Token _ _ T_Integer }
  tok      { Token _ _ T_Bool }
  tok      { Token _ _ T_String }
  tok      { Token _ _ T_Comma }
  tok      { Token _ _ T_If }
  tok      { Token _ _ T_If }
  tok      { Token _ _ T_Else } 
  ':'	   { Token _ _ T_Colon }
  ';'      { Token _ _ T_SemiColon }
  '('      { Token _ _ T_LParen }
  ')'      { Token _ _ T_RParen } 
  '{'      { Token _ _ T_LCurly }
  '}'      { Token _ _ T_RCurly }
  '\n'     { Token _ _ T_NewLine }
  ' '      { Token _ _ T_White }

%%
prog  : {- empty -}                              { [] }
	line prog		                 { $1 : $2 }
	blankline prog		                 { $2 }

blankline : '\n'                                 {  }
          | whitespace '\n'                {  }

line : whitespace statement '\n'           { Line $1 $2 }
     | whitespace statement_list '\n'      { LineList $1 $2 }

statement_list : statement ';' statement_list { $1 : $3 }
	       | statement '\n' 
	       | statement ';' 

paren_block : statement_block
	    | 
statement : 





{
data Line = Line Int Stm
     	  | LineList Int [Stm] 

type Stm = [Token]

parseError tokens = Left "Error"
}

{-

f = (x, y)
   x = 5
   y = 6
   map((x,y) 
     z = x * y ;
     z, list)
   x = (5 * 6 + 4 
   * x *z)
       

-}
