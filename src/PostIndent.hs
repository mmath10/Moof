import IndentParse
import MoofLexer

flattenStm :: Stm -> [Token]
flattenStm statement = accumflatStm statement []

accumflatStm :: Stm -> [Token] -> [Token]
accumflatStm (Stm tk1 stm1 tk2 stm2) tks = 
  let left = accumflatStm stm1 (tk1 : tks)
      right = accumflatStm stm2 (tk2 : left)
  in right
accumflatStm (Tk_l tk stm) tks = tk : (accumflatStm stm tks)
accumflatStm Empty tks = tks

stmToTokens :: [Stm] -> [Token] -> [Token]
stmToTokens stms tks = foldr accumflatStm tks stms

data ILine = LineI Int [Token]
           | LineR
           | LineL


--Map the remaining indents on the stack to indents
insertIndents [] cols = [LineR | x <- cols]
insertIndents ((Line i stm):ls) (ct:cts) 
  --if the line is indented more than the last one 
  | i > ct = 
    let tks = stmToTokens stm
    in LineL : (LineI i tks) : (insertIndents ls i:ct:cts)

  --if the line is indented less than the last line
    --we add as many right indices as we can
  | i < ct = 
    let tks = stmToTokens stm
    in LineR : (insertIndents (Line i tks):ls cts)
    
  --We are still on the indent block
  | otherwise = 
    let tks = stmToTokens stm
    in  (LineI i tks) : (insertIndents ls ct:cts)

addIndents :: [Line] -> [ILine]
addIndents [] = []
addIndents (tk:tks) = insertIndents tk [1] tk

data IToken = 
  I_Name            |
  I_TName	    |
  I_Assignment      |
  I_Integer	    |
  I_Bool            |
  I_If              |
  I_Elif            |
  I_Else            |
  I_LParen          |
  I_RParen          |
  I_String          |
  I_LCurly	    |
  I_RCurly	    |
  I_Comma           |
  I_LineEnd         |
  L_Indent          |
  R_Indent          |
  I_Colon           |
  I_ERROR
  deriving (Eq,Show)	

--Function to map lexer tokens to the tokens that the
--parser will recieve
iTran I_Name  = T_Name
iTran I_TName = T_Name
iTran I_Assignment = T_Assignment
iTran I_Integer = T_Integer
iTran I_Bool = T_Bool 
iTran I_If = T_if
iTran I_Elif = T_Elif
iTran I_Else = T_Else  
iTran I_LParen = T_LParen
iTran I_RParen = T_RParen
iTran I_String = T_String
iTran I_LCurly = T_LCurly
iTran I_RCurly = T_RCurly
iTran I_Comma = T_Comma
iTran I_Colon = T_Colon

accumLines :: ILine -> [IToken] -> [IToken]
accumLines LineR tks = L_Indent : tks
accumLines LineL tks = R_Indent : tks
accumLines (LineI i ltk) tks = foldr cnv tks ltks
  where
    cnv tcv tapp = (iTran tcv) : tapp

toParse :: [ILine] -> [IToken]
toParse strm = foldr accumLines [] strm

--Pass in a stream of Tokens from the lexer
--and get out a stream of tokens with indentation
--delimineters
moofIParse :: [Token] -> Either (ErrorReport [Token]) [IToken]
moofIParse tokens = do
  --Tokens are parsed by IndentParse.y
  lines <- indentParse tokens
  --indent the lines 
  let indented_lines = insertIndents lines
  --Convert the lines back to a token stream for the parser
  toParse indented_lines