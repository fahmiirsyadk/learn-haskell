{- Boolean Logic, Operators and Value Comparisons

   The values of boolean logic in Haskell are True and False. The Capitalization
   of these matter and important. Haskell use C-influenced operators for working
   with Boolean values: (&&) is logical "and" , and (||) is logical "or".

   try type expressions below in GHCI:
      ghci> True && False              (will resulting False)
      ghci> False || True              (will resulting True)

   while some programming language treat the number 0 as synonymous with
   False, Haskell doesn't nor does it consider a nonzero value to be true:
      ghci> True && 1                  (error arising from literal 1)
-}

bool1 :: Bool
bool1 = True && False

bool2 :: Bool
bool2 = False || True

-- try to uncomment this code and load it in ghci
-- bool3 :: Bool
-- bool3 = True && 1

{- Breakdown the errors 

   * No instance for (Num Bool)
   Tell us that ghci is trying to treat the numeric value 1 as having a bool Type
   but it cannot
   
   * Arising from the literal '1'
   Indicates that it was our use of the number 1 that caused the problem

   * In the definition of 'it'
   Refer to a ghci shortcut that we will revisit in a few pages

-}

-- OPERATORS
operator1 :: Bool
operator1 = 1 == 1

operator2 :: Bool
operator2 = 2 < 3

operator3 :: Bool
operator3 = 4 >= 3.99

{- One operator that has different symbol from its C counterparts is "is not equal to".
   In C, this is written as != in haskell , we write (/=) which resembles the != notation
   used in mathematics.

   Also, where C-like Languages often use! for logical negation, Haskell uses the not functions
-}

isNotEqualTo :: Bool
isNotEqualTo = 2 /= 3

notFunction :: Bool
notFunction = not True