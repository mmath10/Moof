{-# OPTIONS_GHC -w #-}
module IndentParse where
import MoofLexer
import MoofUtils

-- parser produced by Happy Version 1.18.10

data HappyAbsSyn t4 t5 t6 t7 t8
	= HappyTerminal (Token)
	| HappyErrorToken Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5
	| HappyAbsSyn6 t6
	| HappyAbsSyn7 t7
	| HappyAbsSyn8 t8

action_0 (1) = happyShift action_7
action_0 (9) = happyReduce_6
action_0 (11) = happyReduce_6
action_0 (13) = happyReduce_6
action_0 (14) = happyShift action_3
action_0 (15) = happyShift action_4
action_0 (16) = happyReduce_6
action_0 (17) = happyReduce_6
action_0 (4) = happyGoto action_5
action_0 (5) = happyGoto action_6
action_0 _ = happyFail

action_1 (14) = happyShift action_3
action_1 (15) = happyShift action_4
action_1 (5) = happyGoto action_2
action_1 _ = happyFail

action_2 (9) = happyShift action_9
action_2 (11) = happyShift action_10
action_2 (16) = happyShift action_11
action_2 (6) = happyGoto action_14
action_2 _ = happyFail

action_3 (14) = happyShift action_3
action_3 (15) = happyShift action_4
action_3 (5) = happyGoto action_13
action_3 _ = happyReduce_6

action_4 (14) = happyShift action_3
action_4 (15) = happyShift action_4
action_4 (5) = happyGoto action_12
action_4 _ = happyReduce_6

action_5 (17) = happyAccept
action_5 _ = happyFail

action_6 (9) = happyShift action_9
action_6 (11) = happyShift action_10
action_6 (16) = happyShift action_11
action_6 (6) = happyGoto action_8
action_6 _ = happyReduce_10

action_7 _ = happyReduce_3

action_8 (13) = happyShift action_29
action_8 _ = happyReduce_1

action_9 (9) = happyShift action_22
action_9 (11) = happyShift action_23
action_9 (13) = happyShift action_24
action_9 (14) = happyShift action_25
action_9 (15) = happyShift action_26
action_9 (16) = happyShift action_27
action_9 (8) = happyGoto action_28
action_9 _ = happyReduce_23

action_10 (9) = happyShift action_22
action_10 (11) = happyShift action_23
action_10 (13) = happyShift action_24
action_10 (14) = happyShift action_25
action_10 (15) = happyShift action_26
action_10 (16) = happyShift action_27
action_10 (8) = happyGoto action_21
action_10 _ = happyReduce_23

action_11 (9) = happyShift action_16
action_11 (11) = happyShift action_17
action_11 (14) = happyShift action_18
action_11 (15) = happyShift action_19
action_11 (16) = happyShift action_20
action_11 (7) = happyGoto action_15
action_11 _ = happyReduce_16

action_12 _ = happyReduce_5

action_13 _ = happyReduce_4

action_14 _ = happyFail

action_15 _ = happyReduce_9

action_16 (9) = happyShift action_22
action_16 (11) = happyShift action_23
action_16 (13) = happyShift action_24
action_16 (14) = happyShift action_25
action_16 (15) = happyShift action_26
action_16 (16) = happyShift action_27
action_16 (8) = happyGoto action_43
action_16 _ = happyReduce_23

action_17 (9) = happyShift action_22
action_17 (11) = happyShift action_23
action_17 (13) = happyShift action_24
action_17 (14) = happyShift action_25
action_17 (15) = happyShift action_26
action_17 (16) = happyShift action_27
action_17 (8) = happyGoto action_42
action_17 _ = happyReduce_23

action_18 (9) = happyShift action_16
action_18 (11) = happyShift action_17
action_18 (14) = happyShift action_18
action_18 (15) = happyShift action_19
action_18 (16) = happyShift action_20
action_18 (7) = happyGoto action_41
action_18 _ = happyReduce_16

action_19 (9) = happyShift action_16
action_19 (11) = happyShift action_17
action_19 (14) = happyShift action_18
action_19 (15) = happyShift action_19
action_19 (16) = happyShift action_20
action_19 (7) = happyGoto action_40
action_19 _ = happyReduce_16

action_20 (9) = happyShift action_16
action_20 (11) = happyShift action_17
action_20 (14) = happyShift action_18
action_20 (15) = happyShift action_19
action_20 (16) = happyShift action_20
action_20 (7) = happyGoto action_39
action_20 _ = happyReduce_16

action_21 (12) = happyShift action_38
action_21 _ = happyFail

action_22 (9) = happyShift action_22
action_22 (11) = happyShift action_23
action_22 (13) = happyShift action_24
action_22 (14) = happyShift action_25
action_22 (15) = happyShift action_26
action_22 (16) = happyShift action_27
action_22 (8) = happyGoto action_37
action_22 _ = happyReduce_23

action_23 (9) = happyShift action_22
action_23 (11) = happyShift action_23
action_23 (13) = happyShift action_24
action_23 (14) = happyShift action_25
action_23 (15) = happyShift action_26
action_23 (16) = happyShift action_27
action_23 (8) = happyGoto action_36
action_23 _ = happyReduce_23

action_24 (9) = happyShift action_22
action_24 (11) = happyShift action_23
action_24 (13) = happyShift action_24
action_24 (14) = happyShift action_25
action_24 (15) = happyShift action_26
action_24 (16) = happyShift action_27
action_24 (8) = happyGoto action_35
action_24 _ = happyReduce_23

action_25 (9) = happyShift action_22
action_25 (11) = happyShift action_23
action_25 (13) = happyShift action_24
action_25 (14) = happyShift action_25
action_25 (15) = happyShift action_26
action_25 (16) = happyShift action_27
action_25 (8) = happyGoto action_34
action_25 _ = happyReduce_23

action_26 (9) = happyShift action_22
action_26 (11) = happyShift action_23
action_26 (13) = happyShift action_24
action_26 (14) = happyShift action_25
action_26 (15) = happyShift action_26
action_26 (16) = happyShift action_27
action_26 (8) = happyGoto action_33
action_26 _ = happyReduce_23

action_27 (9) = happyShift action_22
action_27 (11) = happyShift action_23
action_27 (13) = happyShift action_24
action_27 (14) = happyShift action_25
action_27 (15) = happyShift action_26
action_27 (16) = happyShift action_27
action_27 (8) = happyGoto action_32
action_27 _ = happyReduce_23

action_28 (10) = happyShift action_31
action_28 _ = happyFail

action_29 (1) = happyShift action_7
action_29 (9) = happyReduce_6
action_29 (11) = happyReduce_6
action_29 (13) = happyReduce_6
action_29 (14) = happyShift action_3
action_29 (15) = happyShift action_4
action_29 (16) = happyReduce_6
action_29 (17) = happyReduce_6
action_29 (4) = happyGoto action_30
action_29 (5) = happyGoto action_6
action_29 _ = happyFail

action_30 _ = happyReduce_2

action_31 (9) = happyShift action_16
action_31 (11) = happyShift action_17
action_31 (14) = happyShift action_18
action_31 (15) = happyShift action_19
action_31 (16) = happyShift action_20
action_31 (7) = happyGoto action_49
action_31 _ = happyReduce_16

action_32 _ = happyReduce_19

action_33 _ = happyReduce_22

action_34 _ = happyReduce_21

action_35 _ = happyReduce_20

action_36 (12) = happyShift action_48
action_36 _ = happyFail

action_37 (10) = happyShift action_47
action_37 _ = happyFail

action_38 (9) = happyShift action_16
action_38 (11) = happyShift action_17
action_38 (14) = happyShift action_18
action_38 (15) = happyShift action_19
action_38 (16) = happyShift action_20
action_38 (7) = happyGoto action_46
action_38 _ = happyReduce_16

action_39 _ = happyReduce_13

action_40 _ = happyReduce_15

action_41 _ = happyReduce_14

action_42 (12) = happyShift action_45
action_42 _ = happyFail

action_43 (10) = happyShift action_44
action_43 _ = happyFail

action_44 (9) = happyShift action_16
action_44 (11) = happyShift action_17
action_44 (14) = happyShift action_18
action_44 (15) = happyShift action_19
action_44 (16) = happyShift action_20
action_44 (7) = happyGoto action_53
action_44 _ = happyReduce_16

action_45 (9) = happyShift action_16
action_45 (11) = happyShift action_17
action_45 (14) = happyShift action_18
action_45 (15) = happyShift action_19
action_45 (16) = happyShift action_20
action_45 (7) = happyGoto action_52
action_45 _ = happyReduce_16

action_46 _ = happyReduce_8

action_47 (9) = happyShift action_22
action_47 (11) = happyShift action_23
action_47 (13) = happyShift action_24
action_47 (14) = happyShift action_25
action_47 (15) = happyShift action_26
action_47 (16) = happyShift action_27
action_47 (8) = happyGoto action_51
action_47 _ = happyReduce_23

action_48 (9) = happyShift action_22
action_48 (11) = happyShift action_23
action_48 (13) = happyShift action_24
action_48 (14) = happyShift action_25
action_48 (15) = happyShift action_26
action_48 (16) = happyShift action_27
action_48 (8) = happyGoto action_50
action_48 _ = happyReduce_23

action_49 _ = happyReduce_7

action_50 _ = happyReduce_18

action_51 _ = happyReduce_17

action_52 _ = happyReduce_12

action_53 _ = happyReduce_11

happyReduce_1 = happySpecReduce_2  4 happyReduction_1
happyReduction_1 (HappyAbsSyn6  happy_var_2)
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn4
		 ([Line happy_var_1  happy_var_2]
	)
happyReduction_1 _ _  = notHappyAtAll 

happyReduce_2 = happyReduce 4 4 happyReduction_2
happyReduction_2 ((HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_2) `HappyStk`
	(HappyAbsSyn5  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 ((Line happy_var_1 happy_var_2) : happy_var_4
	) `HappyStk` happyRest

happyReduce_3 = happySpecReduce_1  4 happyReduction_3
happyReduction_3 _
	 =  HappyAbsSyn4
		 ([Line 10000 Empty]
	)

happyReduce_4 = happySpecReduce_2  5 happyReduction_4
happyReduction_4 (HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (1 + happy_var_2
	)
happyReduction_4 _ _  = notHappyAtAll 

happyReduce_5 = happySpecReduce_2  5 happyReduction_5
happyReduction_5 (HappyAbsSyn5  happy_var_2)
	_
	 =  HappyAbsSyn5
		 (4 + happy_var_2
	)
happyReduction_5 _ _  = notHappyAtAll 

happyReduce_6 = happySpecReduce_0  5 happyReduction_6
happyReduction_6  =  HappyAbsSyn5
		 (0
	)

happyReduce_7 = happyReduce 4 6 happyReduction_7
happyReduction_7 ((HappyAbsSyn7  happy_var_4) `HappyStk`
	(HappyTerminal happy_var_3) `HappyStk`
	(HappyAbsSyn8  happy_var_2) `HappyStk`
	(HappyTerminal happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (Stm happy_var_1 happy_var_2 happy_var_3 happy_var_4
	) `HappyStk` happyRest

happyReduce_8 = happyReduce 4 6 happyReduction_8
happyReduction_8 ((HappyAbsSyn7  happy_var_4) `HappyStk`
	(HappyTerminal happy_var_3) `HappyStk`
	(HappyAbsSyn8  happy_var_2) `HappyStk`
	(HappyTerminal happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (Stm happy_var_1 happy_var_2 happy_var_3 happy_var_4
	) `HappyStk` happyRest

happyReduce_9 = happySpecReduce_2  6 happyReduction_9
happyReduction_9 (HappyAbsSyn7  happy_var_2)
	(HappyTerminal happy_var_1)
	 =  HappyAbsSyn6
		 (Tk_l happy_var_1 happy_var_2
	)
happyReduction_9 _ _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_0  6 happyReduction_10
happyReduction_10  =  HappyAbsSyn6
		 (Empty
	)

happyReduce_11 = happyReduce 4 7 happyReduction_11
happyReduction_11 ((HappyAbsSyn7  happy_var_4) `HappyStk`
	(HappyTerminal happy_var_3) `HappyStk`
	(HappyAbsSyn8  happy_var_2) `HappyStk`
	(HappyTerminal happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (Stm happy_var_1 happy_var_2 happy_var_3 happy_var_4
	) `HappyStk` happyRest

happyReduce_12 = happyReduce 4 7 happyReduction_12
happyReduction_12 ((HappyAbsSyn7  happy_var_4) `HappyStk`
	(HappyTerminal happy_var_3) `HappyStk`
	(HappyAbsSyn8  happy_var_2) `HappyStk`
	(HappyTerminal happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (Stm happy_var_1 happy_var_2 happy_var_3 happy_var_4
	) `HappyStk` happyRest

happyReduce_13 = happySpecReduce_2  7 happyReduction_13
happyReduction_13 (HappyAbsSyn7  happy_var_2)
	(HappyTerminal happy_var_1)
	 =  HappyAbsSyn7
		 (Tk_l happy_var_1 happy_var_2
	)
happyReduction_13 _ _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_2  7 happyReduction_14
happyReduction_14 (HappyAbsSyn7  happy_var_2)
	_
	 =  HappyAbsSyn7
		 (happy_var_2
	)
happyReduction_14 _ _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_2  7 happyReduction_15
happyReduction_15 (HappyAbsSyn7  happy_var_2)
	_
	 =  HappyAbsSyn7
		 (happy_var_2
	)
happyReduction_15 _ _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_0  7 happyReduction_16
happyReduction_16  =  HappyAbsSyn7
		 (Empty
	)

happyReduce_17 = happyReduce 4 8 happyReduction_17
happyReduction_17 ((HappyAbsSyn8  happy_var_4) `HappyStk`
	(HappyTerminal happy_var_3) `HappyStk`
	(HappyAbsSyn8  happy_var_2) `HappyStk`
	(HappyTerminal happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn8
		 (Stm happy_var_1 happy_var_2 happy_var_3 happy_var_4
	) `HappyStk` happyRest

happyReduce_18 = happyReduce 4 8 happyReduction_18
happyReduction_18 ((HappyAbsSyn8  happy_var_4) `HappyStk`
	(HappyTerminal happy_var_3) `HappyStk`
	(HappyAbsSyn8  happy_var_2) `HappyStk`
	(HappyTerminal happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn8
		 (Stm happy_var_1 happy_var_2 happy_var_3 happy_var_4
	) `HappyStk` happyRest

happyReduce_19 = happySpecReduce_2  8 happyReduction_19
happyReduction_19 (HappyAbsSyn8  happy_var_2)
	(HappyTerminal happy_var_1)
	 =  HappyAbsSyn8
		 (Tk_l happy_var_1 happy_var_2
	)
happyReduction_19 _ _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_2  8 happyReduction_20
happyReduction_20 (HappyAbsSyn8  happy_var_2)
	_
	 =  HappyAbsSyn8
		 (happy_var_2
	)
happyReduction_20 _ _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_2  8 happyReduction_21
happyReduction_21 (HappyAbsSyn8  happy_var_2)
	_
	 =  HappyAbsSyn8
		 (happy_var_2
	)
happyReduction_21 _ _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_2  8 happyReduction_22
happyReduction_22 (HappyAbsSyn8  happy_var_2)
	_
	 =  HappyAbsSyn8
		 (happy_var_2
	)
happyReduction_22 _ _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_0  8 happyReduction_23
happyReduction_23  =  HappyAbsSyn8
		 (Empty
	)

happyNewToken action sts stk [] =
	action 17 17 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	Token _ _ T_LParen -> cont 9;
	Token _ _ T_RParen -> cont 10;
	Token _ _ T_LCurly -> cont 11;
	Token _ _ T_RCurly -> cont 12;
	Token _ _ T_NewLine -> cont 13;
	Token _ _ T_White -> cont 14;
	Token _ _ T_Tab -> cont 15;
	Token _ _ _ -> cont 16;
	_ -> happyError' (tk:tks)
	}

happyError_ 17 tk tks = happyError' tks
happyError_ _ tk tks = happyError' (tk:tks)

happyThen :: () => Either (ErrorReport [Token]) a -> (a -> Either (ErrorReport [Token]) b) -> Either (ErrorReport [Token]) b
happyThen = ((>>=))
happyReturn :: () => a -> Either (ErrorReport [Token]) a
happyReturn = (return)
happyThen1 m k tks = ((>>=)) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> Either (ErrorReport [Token]) a
happyReturn1 = \a tks -> (return) a
happyError' :: () => [(Token)] -> Either (ErrorReport [Token]) a
happyError' = parseError

indentParse tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn4 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


parseError tokens = Left ERROR { 
  errorMesg = "Problem while parsing" ,
  errorData = tokens 
}

data Line = Line Int Stm
  deriving (Show, Eq)


data Stm = Stm Token Stm Token Stm
         | Tk_l Token Stm
	 | Empty
  deriving (Show, Eq)
{-# LINE 1 "templates/GenericTemplate.hs" #-}
{-# LINE 1 "templates/GenericTemplate.hs" #-}
{-# LINE 1 "<built-in>" #-}
{-# LINE 1 "<command-line>" #-}
{-# LINE 1 "templates/GenericTemplate.hs" #-}
-- Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp 

{-# LINE 30 "templates/GenericTemplate.hs" #-}








{-# LINE 51 "templates/GenericTemplate.hs" #-}

{-# LINE 61 "templates/GenericTemplate.hs" #-}

{-# LINE 70 "templates/GenericTemplate.hs" #-}

infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is (1), it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept (1) tk st sts (_ `HappyStk` ans `HappyStk` _) =
	happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
	 (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action

{-# LINE 148 "templates/GenericTemplate.hs" #-}

-----------------------------------------------------------------------------
-- HappyState data type (not arrays)



newtype HappyState b c = HappyState
        (Int ->                    -- token number
         Int ->                    -- token number (yes, again)
         b ->                           -- token semantic value
         HappyState b c ->              -- current state
         [HappyState b c] ->            -- state stack
         c)



-----------------------------------------------------------------------------
-- Shifting a token

happyShift new_state (1) tk st sts stk@(x `HappyStk` _) =
     let (i) = (case x of { HappyErrorToken (i) -> i }) in
--     trace "shifting the error token" $
     new_state i i tk (HappyState (new_state)) ((st):(sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state ((st):(sts)) ((HappyTerminal (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happySpecReduce_0 nt fn j tk st@((HappyState (action))) sts stk
     = action nt j tk st ((st):(sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@(((st@(HappyState (action))):(_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happySpecReduce_2 nt fn j tk _ ((_):(sts@(((st@(HappyState (action))):(_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happySpecReduce_3 nt fn j tk _ ((_):(((_):(sts@(((st@(HappyState (action))):(_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k - ((1) :: Int)) sts of
	 sts1@(((st1@(HappyState (action))):(_))) ->
        	let r = fn stk in  -- it doesn't hurt to always seq here...
       		happyDoSeq r (action nt j tk st1 sts1 r)

happyMonadReduce k nt fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
        happyThen1 (fn stk tk) (\r -> action nt j tk st1 sts1 (r `HappyStk` drop_stk))
       where (sts1@(((st1@(HappyState (action))):(_)))) = happyDrop k ((st):(sts))
             drop_stk = happyDropStk k stk

happyMonad2Reduce k nt fn (1) tk st sts stk
     = happyFail (1) tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
       happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))
       where (sts1@(((st1@(HappyState (action))):(_)))) = happyDrop k ((st):(sts))
             drop_stk = happyDropStk k stk





             new_state = action


happyDrop (0) l = l
happyDrop n ((_):(t)) = happyDrop (n - ((1) :: Int)) t

happyDropStk (0) l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n - ((1)::Int)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction

{-# LINE 246 "templates/GenericTemplate.hs" #-}
happyGoto action j tk st = action j j tk (HappyState action)


-----------------------------------------------------------------------------
-- Error recovery ((1) is the error token)

-- parse error if we are in recovery and we fail again
happyFail (1) tk old_st _ stk@(x `HappyStk` _) =
     let (i) = (case x of { HappyErrorToken (i) -> i }) in
--	trace "failing" $ 
        happyError_ i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  (1) tk old_st (((HappyState (action))):(sts)) 
						(saved_tok `HappyStk` _ `HappyStk` stk) =
--	trace ("discarding state, depth " ++ show (length stk))  $
	action (1) (1) tk (HappyState (action)) sts ((saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail  i tk (HappyState (action)) sts stk =
--      trace "entering error recovery" $
	action (1) (1) tk (HappyState (action)) sts ( (HappyErrorToken (i)) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll :: a
notHappyAtAll = error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions







-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--	happySeq = happyDoSeq
-- otherwise it emits
-- 	happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.

{-# LINE 312 "templates/GenericTemplate.hs" #-}
{-# NOINLINE happyShift #-}
{-# NOINLINE happySpecReduce_0 #-}
{-# NOINLINE happySpecReduce_1 #-}
{-# NOINLINE happySpecReduce_2 #-}
{-# NOINLINE happySpecReduce_3 #-}
{-# NOINLINE happyReduce #-}
{-# NOINLINE happyMonadReduce #-}
{-# NOINLINE happyGoto #-}
{-# NOINLINE happyFail #-}

-- end of Happy Template.
