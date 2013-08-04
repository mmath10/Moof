module PostIndent where
import IndentParse
import MoofLexer
import MoofUtils

flattenStm :: Stm -> [Token]
flattenStm statement = accumflatStm statement []

accumflatStm :: Stm -> [Token] -> [Token]
accumflatStm (Stm tk1 stm1 tk2 stm2) tks =
  let left = tk2 : accumflatStm stm2 tks
      right = tk1 : accumflatStm stm1 left
  in right
accumflatStm (Tk_l tk stm) tks = tk : accumflatStm stm tks
accumflatStm Empty tks = tks

data ILine = LineI Int [Token]
           | LineR
           | LineL

--Map the remaining indents on the stack to indents
insertIndents [] (col:cols) = [LineR | x<- cols]
insertIndents ((Line i stm):ls) (ct:cts)
  --if the line is indented more than the last one
  | i > ct =
    let tks = flattenStm stm
    in LineL : (LineI i tks) : (insertIndents ls (i:ct:cts))

  --if the line is indented less than the last line
    --we add as many right indices as we can
  | i < ct = LineR : (insertIndents ((Line i stm):ls) cts)
  --We are still on the indent block
  | otherwise =
    let tks = flattenStm stm
    in  (LineI i tks) : (insertIndents ls (ct:cts))

addIndents :: [Line] -> [ILine]
addIndents [] = []
addIndents tks = insertIndents tks  [0]

data IType =
  I_Name            |
  I_TName           |
  I_Assignment      |
  I_Integer         |
  I_Bool            |
  I_LParen          |
  I_RParen          |
  I_String          |
  I_LCurly          |
  I_RCurly          |
  I_Comma           |
  I_Colon           |
  I_Slash           |
  I_SemiColon
  deriving (Eq,Show)

data PToken = PToken AlexPosn String IType
            | L_Indent
            | R_Indent
            | Endl
            deriving (Eq, Show)

--Function to map lexer tokens to the tokens that the
--parser will recieve
iTran T_Slash = I_Slash
iTran T_Name = I_Name
iTran T_TName = I_Name
iTran T_Assignment = I_Assignment
iTran T_Integer = I_Integer
iTran T_Bool = I_Bool
iTran T_LParen = I_LParen
iTran T_RParen = I_RParen
iTran T_String = I_String
iTran T_LCurly = I_LCurly
iTran T_RCurly = I_RCurly
iTran T_Comma = I_Comma
iTran T_Colon = I_Colon
iTran T_SemiColon = I_SemiColon

tokToItok (Token p s t) = PToken p s (iTran t)

--Convert the Iline with the indentation information to
--a stream of tokens
accumLines :: ILine -> [PToken] -> [PToken]
accumLines LineR tks = R_Indent : tks
accumLines LineL tks = L_Indent : tks
accumLines (LineI i ltk) tks = foldr cnv (Endl:tks) ltk
  where
    cnv tcv tapp = (tokToItok tcv) : tapp

toParse :: [ILine] -> [PToken]
toParse strm = foldr accumLines [] strm

--Pass in a stream of Tokens from the lexer
--and get out a stream of tokens with indentation
--delimineters
moofIParse :: [Token] -> Either (ErrorReport [Token]) [PToken]
moofIParse tokens = do
  --Tokens are parsed by IndentParse.y
  lines <- indentParse tokens
  --indent the lines
  let indented_lines = addIndents lines
  --Convert the lines back to a token stream for the parser
  return (toParse indented_lines)

