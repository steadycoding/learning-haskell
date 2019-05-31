module Tutorial.Basics(
 execute,
 doubleIt,
 doubleThem,
 doubleUnder100,
 let'sFunction,
) where

-- execute demonstrates basics by printing out the functions with defaults
execute = do
    print "print 2 = 2"
    print $ ("doubleIt 2 = ", doubleIt 2)
    print $ ("doubleThem 2 4 = ", doubleThem 2 4)
    print $ ("doubleUnder100 13 = ", doubleUnder100 13)
    print $ ("doubleUnder100 101 = ", doubleUnder100 101)
    print $ ("doubleUnder100' 85 = ", doubleUnder100' 85)
    print $ ("doubleUnder100' 102 = ", doubleUnder100' 102)
    print $ ("let'sFunction = ", let'sFunction)
    print $ ("yourName = ", yourName)
    -- just the lowercase letters
    print $ ("[x | x <- yourName, x `elem` ['a'..'z']] = ", [x | x <- yourName, x `elem` ['a'..'z']])

-- doubleIt returns the input multiplied by itself
doubleIt x = x + x
-- doubleThem returns two things multiplied by themselves and then added together.
doubleThem x y = doubleIt x + doubleIt y
-- doubleUnder100 doubles a number if it's less than 100
doubleUnder100 x = if x > 100 then x else doubleIt x
-- doubleUnder100 doubles a number if it's less than 100 and add 1
doubleUnder100' x = (if x > 100 then x else x * 2) + 1
-- let'sFunction is a function with an apostrophe contains a string.
let'sFunction = "Functions can have an apostrophe"
yourName = "Github"