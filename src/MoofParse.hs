{-# OPTIONS_GHC -w #-}
module MoofParse where
import PostIndent

-- parser produced by Happy Version 1.18.10

data HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12
	= HappyTerminal (PToken)
	| HappyErrorToken Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5
	| HappyAbsSyn6 t6
	| HappyAbsSyn7 t7
	| HappyAbsSyn8 t8
	| HappyAbsSyn9 t9
	| HappyAbsSyn10 t10
	| HappyAbsSyn11 t11
	| HappyAbsSyn12 t12

action_0 (13) = happyShift action_7
action_0 (18) = happyShift action_8
action_0 (19) = happyShift action_9
action_0 (20) = happyShift action_10
action_0 (23) = happyShift action_11
action_0 (24) = happyShift action_12
action_0 (25) = happyShift action_13
action_0 (27) = happyShift action_14
action_0 (28) = happyShift action_15
action_0 (33) = happyShift action_16
action_0 (4) = happyGoto action_2
action_0 (5) = happyGoto action_3
action_0 (7) = happyGoto action_4
action_0 (8) = happyGoto action_5
action_0 (9) = happyGoto action_6
action_0 _ = happyReduce_1

action_1 _ = happyFail

action_2 (37) = happyAccept
action_2 _ = happyFail

action_3 (13) = happyShift action_7
action_3 (18) = happyShift action_8
action_3 (19) = happyShift action_9
action_3 (20) = happyShift action_10
action_3 (23) = happyShift action_11
action_3 (24) = happyShift action_12
action_3 (25) = happyShift action_13
action_3 (27) = happyShift action_14
action_3 (28) = happyShift action_15
action_3 (33) = happyShift action_16
action_3 (4) = happyGoto action_30
action_3 (5) = happyGoto action_3
action_3 (7) = happyGoto action_4
action_3 (8) = happyGoto action_5
action_3 (9) = happyGoto action_6
action_3 _ = happyReduce_1

action_4 (36) = happyShift action_29
action_4 _ = happyFail

action_5 _ = happyReduce_17

action_6 (25) = happyShift action_28
action_6 _ = happyReduce_19

action_7 (20) = happyShift action_22
action_7 (23) = happyShift action_11
action_7 (24) = happyShift action_12
action_7 (25) = happyShift action_13
action_7 (27) = happyShift action_14
action_7 (28) = happyShift action_15
action_7 (33) = happyShift action_16
action_7 (7) = happyGoto action_27
action_7 (8) = happyGoto action_5
action_7 (9) = happyGoto action_6
action_7 _ = happyFail

action_8 (20) = happyShift action_22
action_8 (23) = happyShift action_11
action_8 (24) = happyShift action_12
action_8 (25) = happyShift action_13
action_8 (27) = happyShift action_14
action_8 (28) = happyShift action_15
action_8 (33) = happyShift action_16
action_8 (7) = happyGoto action_26
action_8 (8) = happyGoto action_5
action_8 (9) = happyGoto action_6
action_8 _ = happyFail

action_9 (20) = happyShift action_25
action_9 _ = happyFail

action_10 (22) = happyShift action_24
action_10 _ = happyReduce_20

action_11 _ = happyReduce_24

action_12 _ = happyReduce_23

action_13 (20) = happyShift action_22
action_13 (23) = happyShift action_11
action_13 (24) = happyShift action_12
action_13 (25) = happyShift action_13
action_13 (27) = happyShift action_14
action_13 (28) = happyShift action_15
action_13 (33) = happyShift action_16
action_13 (7) = happyGoto action_23
action_13 (8) = happyGoto action_5
action_13 (9) = happyGoto action_6
action_13 _ = happyFail

action_14 _ = happyReduce_22

action_15 (20) = happyShift action_22
action_15 (23) = happyShift action_11
action_15 (24) = happyShift action_12
action_15 (25) = happyShift action_13
action_15 (27) = happyShift action_14
action_15 (28) = happyShift action_15
action_15 (33) = happyShift action_16
action_15 (7) = happyGoto action_20
action_15 (8) = happyGoto action_5
action_15 (9) = happyGoto action_6
action_15 (10) = happyGoto action_21
action_15 _ = happyFail

action_16 (20) = happyShift action_19
action_16 (11) = happyGoto action_17
action_16 (12) = happyGoto action_18
action_16 _ = happyReduce_28

action_17 (31) = happyShift action_40
action_17 _ = happyFail

action_18 _ = happyReduce_29

action_19 (30) = happyShift action_39
action_19 _ = happyReduce_31

action_20 (30) = happyShift action_38
action_20 _ = happyReduce_26

action_21 (29) = happyShift action_37
action_21 _ = happyFail

action_22 _ = happyReduce_20

action_23 (26) = happyShift action_36
action_23 _ = happyFail

action_24 (20) = happyShift action_22
action_24 (23) = happyShift action_11
action_24 (24) = happyShift action_12
action_24 (25) = happyShift action_13
action_24 (27) = happyShift action_14
action_24 (28) = happyShift action_15
action_24 (33) = happyShift action_16
action_24 (7) = happyGoto action_35
action_24 (8) = happyGoto action_5
action_24 (9) = happyGoto action_6
action_24 _ = happyFail

action_25 (25) = happyShift action_34
action_25 _ = happyFail

action_26 (31) = happyShift action_33
action_26 _ = happyFail

action_27 (31) = happyShift action_32
action_27 _ = happyFail

action_28 (20) = happyShift action_22
action_28 (23) = happyShift action_11
action_28 (24) = happyShift action_12
action_28 (25) = happyShift action_13
action_28 (27) = happyShift action_14
action_28 (28) = happyShift action_15
action_28 (33) = happyShift action_16
action_28 (7) = happyGoto action_20
action_28 (8) = happyGoto action_5
action_28 (9) = happyGoto action_6
action_28 (10) = happyGoto action_31
action_28 _ = happyFail

action_29 _ = happyReduce_11

action_30 _ = happyReduce_2

action_31 (26) = happyShift action_49
action_31 _ = happyFail

action_32 (20) = happyShift action_22
action_32 (23) = happyShift action_11
action_32 (24) = happyShift action_12
action_32 (25) = happyShift action_13
action_32 (27) = happyShift action_14
action_32 (28) = happyShift action_15
action_32 (33) = happyShift action_16
action_32 (36) = happyShift action_48
action_32 (7) = happyGoto action_47
action_32 (8) = happyGoto action_5
action_32 (9) = happyGoto action_6
action_32 _ = happyFail

action_33 (34) = happyShift action_46
action_33 _ = happyFail

action_34 (20) = happyShift action_19
action_34 (11) = happyGoto action_45
action_34 (12) = happyGoto action_18
action_34 _ = happyReduce_28

action_35 (36) = happyShift action_44
action_35 _ = happyFail

action_36 _ = happyReduce_25

action_37 _ = happyReduce_21

action_38 (20) = happyShift action_22
action_38 (23) = happyShift action_11
action_38 (24) = happyShift action_12
action_38 (25) = happyShift action_13
action_38 (27) = happyShift action_14
action_38 (28) = happyShift action_15
action_38 (33) = happyShift action_16
action_38 (7) = happyGoto action_20
action_38 (8) = happyGoto action_5
action_38 (9) = happyGoto action_6
action_38 (10) = happyGoto action_43
action_38 _ = happyFail

action_39 (20) = happyShift action_19
action_39 (12) = happyGoto action_42
action_39 _ = happyFail

action_40 (20) = happyShift action_22
action_40 (23) = happyShift action_11
action_40 (24) = happyShift action_12
action_40 (25) = happyShift action_13
action_40 (27) = happyShift action_14
action_40 (28) = happyShift action_15
action_40 (8) = happyGoto action_41
action_40 (9) = happyGoto action_6
action_40 _ = happyFail

action_41 _ = happyReduce_16

action_42 _ = happyReduce_30

action_43 _ = happyReduce_27

action_44 _ = happyReduce_10

action_45 (26) = happyShift action_53
action_45 _ = happyFail

action_46 (13) = happyShift action_7
action_46 (18) = happyShift action_8
action_46 (19) = happyShift action_9
action_46 (20) = happyShift action_10
action_46 (23) = happyShift action_11
action_46 (24) = happyShift action_12
action_46 (25) = happyShift action_13
action_46 (27) = happyShift action_14
action_46 (28) = happyShift action_15
action_46 (33) = happyShift action_16
action_46 (4) = happyGoto action_52
action_46 (5) = happyGoto action_3
action_46 (7) = happyGoto action_4
action_46 (8) = happyGoto action_5
action_46 (9) = happyGoto action_6
action_46 _ = happyReduce_1

action_47 (36) = happyShift action_51
action_47 _ = happyFail

action_48 (34) = happyShift action_50
action_48 _ = happyFail

action_49 _ = happyReduce_18

action_50 (13) = happyShift action_7
action_50 (18) = happyShift action_8
action_50 (19) = happyShift action_9
action_50 (20) = happyShift action_10
action_50 (23) = happyShift action_11
action_50 (24) = happyShift action_12
action_50 (25) = happyShift action_13
action_50 (27) = happyShift action_14
action_50 (28) = happyShift action_15
action_50 (33) = happyShift action_16
action_50 (4) = happyGoto action_59
action_50 (5) = happyGoto action_3
action_50 (7) = happyGoto action_4
action_50 (8) = happyGoto action_5
action_50 (9) = happyGoto action_6
action_50 _ = happyReduce_1

action_51 (14) = happyShift action_57
action_51 (15) = happyShift action_58
action_51 (6) = happyGoto action_56
action_51 _ = happyReduce_5

action_52 (35) = happyShift action_55
action_52 _ = happyFail

action_53 (31) = happyShift action_54
action_53 _ = happyFail

action_54 (20) = happyShift action_22
action_54 (23) = happyShift action_11
action_54 (24) = happyShift action_12
action_54 (25) = happyShift action_13
action_54 (27) = happyShift action_14
action_54 (28) = happyShift action_15
action_54 (33) = happyShift action_16
action_54 (34) = happyShift action_64
action_54 (7) = happyGoto action_63
action_54 (8) = happyGoto action_5
action_54 (9) = happyGoto action_6
action_54 _ = happyFail

action_55 _ = happyReduce_7

action_56 _ = happyReduce_6

action_57 (20) = happyShift action_22
action_57 (23) = happyShift action_11
action_57 (24) = happyShift action_12
action_57 (25) = happyShift action_13
action_57 (27) = happyShift action_14
action_57 (28) = happyShift action_15
action_57 (33) = happyShift action_16
action_57 (7) = happyGoto action_62
action_57 (8) = happyGoto action_5
action_57 (9) = happyGoto action_6
action_57 _ = happyFail

action_58 (31) = happyShift action_61
action_58 _ = happyFail

action_59 (35) = happyShift action_60
action_59 _ = happyFail

action_60 (14) = happyShift action_57
action_60 (15) = happyShift action_58
action_60 (6) = happyGoto action_70
action_60 _ = happyReduce_3

action_61 (20) = happyShift action_22
action_61 (23) = happyShift action_11
action_61 (24) = happyShift action_12
action_61 (25) = happyShift action_13
action_61 (27) = happyShift action_14
action_61 (28) = happyShift action_15
action_61 (33) = happyShift action_16
action_61 (36) = happyShift action_69
action_61 (7) = happyGoto action_68
action_61 (8) = happyGoto action_5
action_61 (9) = happyGoto action_6
action_61 _ = happyFail

action_62 (31) = happyShift action_67
action_62 _ = happyFail

action_63 (36) = happyShift action_66
action_63 _ = happyFail

action_64 (13) = happyShift action_7
action_64 (18) = happyShift action_8
action_64 (19) = happyShift action_9
action_64 (20) = happyShift action_10
action_64 (23) = happyShift action_11
action_64 (24) = happyShift action_12
action_64 (25) = happyShift action_13
action_64 (27) = happyShift action_14
action_64 (28) = happyShift action_15
action_64 (33) = happyShift action_16
action_64 (4) = happyGoto action_65
action_64 (5) = happyGoto action_3
action_64 (7) = happyGoto action_4
action_64 (8) = happyGoto action_5
action_64 (9) = happyGoto action_6
action_64 _ = happyReduce_1

action_65 (35) = happyShift action_75
action_65 _ = happyFail

action_66 _ = happyReduce_8

action_67 (20) = happyShift action_22
action_67 (23) = happyShift action_11
action_67 (24) = happyShift action_12
action_67 (25) = happyShift action_13
action_67 (27) = happyShift action_14
action_67 (28) = happyShift action_15
action_67 (33) = happyShift action_16
action_67 (36) = happyShift action_74
action_67 (7) = happyGoto action_73
action_67 (8) = happyGoto action_5
action_67 (9) = happyGoto action_6
action_67 _ = happyFail

action_68 (36) = happyShift action_72
action_68 _ = happyFail

action_69 (34) = happyShift action_71
action_69 _ = happyFail

action_70 _ = happyReduce_4

action_71 (13) = happyShift action_7
action_71 (18) = happyShift action_8
action_71 (19) = happyShift action_9
action_71 (20) = happyShift action_10
action_71 (23) = happyShift action_11
action_71 (24) = happyShift action_12
action_71 (25) = happyShift action_13
action_71 (27) = happyShift action_14
action_71 (28) = happyShift action_15
action_71 (33) = happyShift action_16
action_71 (4) = happyGoto action_78
action_71 (5) = happyGoto action_3
action_71 (7) = happyGoto action_4
action_71 (8) = happyGoto action_5
action_71 (9) = happyGoto action_6
action_71 _ = happyReduce_1

action_72 _ = happyReduce_15

action_73 (36) = happyShift action_77
action_73 _ = happyFail

action_74 (34) = happyShift action_76
action_74 _ = happyFail

action_75 _ = happyReduce_9

action_76 (13) = happyShift action_7
action_76 (18) = happyShift action_8
action_76 (19) = happyShift action_9
action_76 (20) = happyShift action_10
action_76 (23) = happyShift action_11
action_76 (24) = happyShift action_12
action_76 (25) = happyShift action_13
action_76 (27) = happyShift action_14
action_76 (28) = happyShift action_15
action_76 (33) = happyShift action_16
action_76 (4) = happyGoto action_81
action_76 (5) = happyGoto action_3
action_76 (7) = happyGoto action_4
action_76 (8) = happyGoto action_5
action_76 (9) = happyGoto action_6
action_76 _ = happyReduce_1

action_77 (14) = happyShift action_57
action_77 (15) = happyShift action_58
action_77 (6) = happyGoto action_80
action_77 _ = happyFail

action_78 (35) = happyShift action_79
action_78 _ = happyFail

action_79 _ = happyReduce_14

action_80 _ = happyReduce_13

action_81 (35) = happyShift action_82
action_81 _ = happyFail

action_82 (14) = happyShift action_57
action_82 (15) = happyShift action_58
action_82 (6) = happyGoto action_83
action_82 _ = happyFail

action_83 _ = happyReduce_12

happyReduce_1 = happySpecReduce_0  4 happyReduction_1
happyReduction_1  =  HappyAbsSyn4
		 ([]
	)

happyReduce_2 = happySpecReduce_2  4 happyReduction_2
happyReduction_2 (HappyAbsSyn4  happy_var_2)
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn4
		 (happy_var_1 : happy_var_2
	)
happyReduction_2 _ _  = notHappyAtAll 

happyReduce_3 = happyReduce 7 5 happyReduction_3
happyReduction_3 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn7  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (If happy_var_2 happy_var_6 Endif
	) `HappyStk` happyRest

happyReduce_4 = happyReduce 8 5 happyReduction_4
happyReduction_4 ((HappyAbsSyn6  happy_var_8) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn7  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (If happy_var_2 happy_var_6 happy_var_8
	) `HappyStk` happyRest

happyReduce_5 = happyReduce 5 5 happyReduction_5
happyReduction_5 (_ `HappyStk`
	(HappyAbsSyn7  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn7  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (If happy_var_2 happy_var_4 Endif
	) `HappyStk` happyRest

happyReduce_6 = happyReduce 6 5 happyReduction_6
happyReduction_6 ((HappyAbsSyn6  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn7  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn7  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (If happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_7 = happyReduce 6 5 happyReduction_7
happyReduction_7 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_5) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn7  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (While happy_var_2 happy_var_5
	) `HappyStk` happyRest

happyReduce_8 = happyReduce 8 5 happyReduction_8
happyReduction_8 (_ `HappyStk`
	(HappyAbsSyn7  happy_var_7) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn11  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (FuncDef happy_var_2 happy_var_4 happy_var_7
	) `HappyStk` happyRest

happyReduce_9 = happyReduce 9 5 happyReduction_9
happyReduction_9 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_8) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn11  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (FuncDef happy_var_2 happy_var_4 happy_var_8
	) `HappyStk` happyRest

happyReduce_10 = happyReduce 4 5 happyReduction_10
happyReduction_10 (_ `HappyStk`
	(HappyAbsSyn7  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (MVar happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_11 = happySpecReduce_2  5 happyReduction_11
happyReduction_11 _
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn5
		 (Express happy_var_1
	)
happyReduction_11 _ _  = notHappyAtAll 

happyReduce_12 = happyReduce 8 6 happyReduction_12
happyReduction_12 ((HappyAbsSyn6  happy_var_8) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn7  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (Elif happy_var_2 happy_var_6 happy_var_8
	) `HappyStk` happyRest

happyReduce_13 = happyReduce 6 6 happyReduction_13
happyReduction_13 ((HappyAbsSyn6  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn7  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn7  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (Elif happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_14 = happyReduce 6 6 happyReduction_14
happyReduction_14 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_5) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (Else happy_var_5
	) `HappyStk` happyRest

happyReduce_15 = happyReduce 4 6 happyReduction_15
happyReduction_15 (_ `HappyStk`
	(HappyAbsSyn7  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (Else happy_var_3
	) `HappyStk` happyRest

happyReduce_16 = happyReduce 4 7 happyReduction_16
happyReduction_16 ((HappyAbsSyn8  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn11  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn7
		 (Lambda happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_17 = happySpecReduce_1  7 happyReduction_17
happyReduction_17 (HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn7
		 (happy_var_1
	)
happyReduction_17 _  = notHappyAtAll 

happyReduce_18 = happyReduce 4 8 happyReduction_18
happyReduction_18 (_ `HappyStk`
	(HappyAbsSyn10  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn9  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn8
		 (FCall happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_19 = happySpecReduce_1  8 happyReduction_19
happyReduction_19 (HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn8
		 (happy_var_1
	)
happyReduction_19 _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_1  9 happyReduction_20
happyReduction_20 (HappyTerminal happy_var_1)
	 =  HappyAbsSyn9
		 (Literal happy_var_1
	)
happyReduction_20 _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_3  9 happyReduction_21
happyReduction_21 _
	(HappyAbsSyn10  happy_var_2)
	_
	 =  HappyAbsSyn9
		 (Tuple happy_var_2
	)
happyReduction_21 _ _ _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_1  9 happyReduction_22
happyReduction_22 (HappyTerminal happy_var_1)
	 =  HappyAbsSyn9
		 (Literal happy_var_1
	)
happyReduction_22 _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_1  9 happyReduction_23
happyReduction_23 (HappyTerminal happy_var_1)
	 =  HappyAbsSyn9
		 (Literal happy_var_1
	)
happyReduction_23 _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_1  9 happyReduction_24
happyReduction_24 (HappyTerminal happy_var_1)
	 =  HappyAbsSyn9
		 (Literal happy_var_1
	)
happyReduction_24 _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_3  9 happyReduction_25
happyReduction_25 _
	(HappyAbsSyn7  happy_var_2)
	_
	 =  HappyAbsSyn9
		 (happy_var_2
	)
happyReduction_25 _ _ _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_1  10 happyReduction_26
happyReduction_26 (HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn10
		 ([happy_var_1]
	)
happyReduction_26 _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_3  10 happyReduction_27
happyReduction_27 (HappyAbsSyn10  happy_var_3)
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn10
		 (happy_var_1 : happy_var_3
	)
happyReduction_27 _ _ _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_0  11 happyReduction_28
happyReduction_28  =  HappyAbsSyn11
		 ([]
	)

happyReduce_29 = happySpecReduce_1  11 happyReduction_29
happyReduction_29 (HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn11
		 (happy_var_1
	)
happyReduction_29 _  = notHappyAtAll 

happyReduce_30 = happySpecReduce_3  12 happyReduction_30
happyReduction_30 (HappyAbsSyn12  happy_var_3)
	_
	(HappyTerminal happy_var_1)
	 =  HappyAbsSyn12
		 (happy_var_1 : happy_var_3
	)
happyReduction_30 _ _ _  = notHappyAtAll 

happyReduce_31 = happySpecReduce_1  12 happyReduction_31
happyReduction_31 (HappyTerminal happy_var_1)
	 =  HappyAbsSyn12
		 ([happy_var_1]
	)
happyReduction_31 _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 37 37 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	PToken _ "if" I_Name -> cont 13;
	PToken _ "elif" I_Name -> cont 14;
	PToken _ "else" I_Name -> cont 15;
	PToken _ "for" I_Name -> cont 16;
	PToken _ "in" I_Name -> cont 17;
	PToken _ "while" I_Name -> cont 18;
	PToken _ "def" I_Name -> cont 19;
	PToken _ _ I_Name -> cont 20;
	PToken _ _ I_TName -> cont 21;
	PToken _ _ I_Assignment -> cont 22;
	PToken _ _ I_Integer -> cont 23;
	PToken _ _ I_Bool -> cont 24;
	PToken _ _ I_LParen -> cont 25;
	PToken _ _ I_RParen -> cont 26;
	PToken _ _ I_String -> cont 27;
	PToken _ _ I_LCurly -> cont 28;
	PToken _ _ I_RCurly -> cont 29;
	PToken _ _ I_Comma -> cont 30;
	PToken _ _ I_Colon -> cont 31;
	PToken _ _ I_SemiColon -> cont 32;
	PToken _ _ I_Slash -> cont 33;
	R_Indent -> cont 34;
	L_Indent -> cont 35;
	Endl -> cont 36;
	_ -> happyError' (tk:tks)
	}

happyError_ 37 tk tks = happyError' tks
happyError_ _ tk tks = happyError' (tk:tks)

happyThen :: () => Either String a -> (a -> Either String b) -> Either String b
happyThen = ((>>=))
happyReturn :: () => a -> Either String a
happyReturn = (return)
happyThen1 m k tks = ((>>=)) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> Either String a
happyReturn1 = \a tks -> (return) a
happyError' :: () => [(PToken)] -> Either String a
happyError' = parseError

moofParse tks = happySomeParser where
  happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn4 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


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
