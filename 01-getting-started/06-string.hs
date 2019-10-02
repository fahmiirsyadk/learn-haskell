{- haskell string notation is same like Perl and C, surrounded by double quotes
   Haskell escape characters and escaping rules follow the conventions established by the C lang
   Examples: '\n' denotes a newline character and many more

   try to run imString and escapedString
-}

imString :: String
imString = "Im a string"

escapedString :: String
escapedString = "Here's a newline --> \n <-- Aaand work"

{-- Haskell make a distinction between single characters and text strings. A character is enclosed in single quotes
    Example: 'a' <-- this is a char
-}

-- In fact, A Text string is simply a list of individual characters. see listChar below
listChars :: [Char] -- there's listChars it have list of Char 
listChars = ['a','k','u',' ','s','i','a','p','a',' ','?']

{-- and try to create a new variable name it whatever you want , and fill it with words 
    example : a = "am i same ?"
    then check the type (:type <variable_name>) , it will same with listChars type. 

    if the string is just a char collection in a list , then you can a an element with
    (:) operator
-}

newConsString :: [Char]
newConsString = 'b':"lock"

newConcatString :: [Char]
newConcatString = "sebenarnya " ++ listChars