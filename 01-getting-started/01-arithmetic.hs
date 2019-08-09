-- using infix style
add2 :: Integer -> Integer
add2 a = a + 2

-- using prefix sytle
addPre2 :: Integer -> Integer
addPre2 a = (+) a 2

-- integer exponen
iEx :: Integer -> Integer -> Integer
iEx a b = a ^ b

-- Writing Negative Numbers
{- example of negative number , the (-) symbol in front of the number is 
   called unary operator, how its work ?
   took "3" then applied to the operator -
-} 
negativeNum :: Integer
negativeNum = -3

{- Look at this example 

   ghci> 2 + -3
   whats the result ? the result is error cannot mix (+) and prefix `- in
      the same infix expression
   
   instead we can fix it with parentheses, look code below:
-}

-- how its work ? , to avoid a parsing ambigiuty. when we apply a function in haskell
-- expression inside the parenthesis will executed first , so "3" will applied with operator "-"
-- resulting "-3" then the (+) symbol [infix] execute two of them (two plus negative three) 
negativePlus :: Integer
negativePlus = 2 + (-3)

-- first , execute the 13 multiple by 37.
-- second, apply "-" the result of first step
-- execute 3 the result of second step
advanceNegativePlus :: Integer
advanceNegativePlus = 3 + (-(13 * 37))