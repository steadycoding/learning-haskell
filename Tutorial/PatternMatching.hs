module Tutorial.PatternMatching(
    Tutorial.PatternMatching.execute,
) where

import Tutorial.Lists as Lists hiding (sum')

execute = do
    print $ "lucky 777 is " ++ lucky 777
    print $ "lucky 7 is " ++ lucky 7
    print $ "sayInt 0 is " ++ sayInt 0
    print $ "sayInt 1 is " ++ sayInt 1
    print $ "sayInt 2 is " ++ sayInt 2
    print $ "sayInt 3 is " ++ sayInt 3
    print $ "sayInt 4 is " ++ sayInt 4
    print $ "sayInt 5 is " ++ sayInt 5
    print $ "sayInt 6 is " ++ sayInt 6
    print $ "sayInt 7 is " ++ sayInt 7
    print $ "sayInt 8 is " ++ sayInt 8
    print $ "sayInt 9 is " ++ sayInt 9
    print $ ("factorial' 10 is " ,read "0" + factorial' 10)
    -- print $ charName 'd' -- produces exception : Non-exhaustive patterns in function charName
    print $ "charName 'a' is " ++ charName 'a'
    print $ ("addVectors (7,1) (3,9) is ", addVectors (7,1) (3,9))
    print $ ("firstTriple (4, 6, 1) is ", firstTriple (4, 6, 1))
    print $ ("secondTriple (4, 6, 1) is ", secondTriple (4, 6, 1))
    print $ ("thirdTriple (4, 6, 1) is ", thirdTriple (4, 6, 1))
    print $ ("addTuples tupleList is ", addTuples tupleList)
    print $ ("head' Lists.numberList is ", head' Lists.numberList)
    print $ ("head' tupleList is ", head' tupleList)
    -- print $ head' "" -- produces exception : helloworld.hs: head' requires at least one element in the list
    -- print $ head' [] :: Int -- produces exception : Couldn't match expected type ‘IO b’ with actual type ‘Int’
    print $ "tell [1,2,3] is " ++ tell [1,2,3]
    print $ "tell \"AB\" is " ++ tell "AB"
    print $ ("length' \"ham\" is ", length' "ham")
    print $ ("sum' [1,2,3,4,5,6,7,8,9] is ", sum' [1,2,3,4,5,6,7,8,9])
    print $ "tellFirstLetter \"Dracula\" is " ++ tellFirstLetter "Dracula"
-- lucky returns lucky if given the lucky number 777
lucky :: (Integral a) => a -> String
lucky 777 = "You're Lucky!"
lucky x = "Nope." 
sayInt :: (Integral a) => a -> String
sayInt 1 = "One"
sayInt 2 = "Two"
sayInt 3 = "Three"
sayInt 4 = "Four"
sayInt 5 = "Five"
sayInt 6 = "Six"
sayInt 7 = "Seven"
sayInt 8 = "Eight"
sayInt x = "Too high or too low"
-- factorial' 
factorial' :: (Integral a) => a -> a  
factorial' 0 = 1  
factorial' n = n * factorial' (n - 1) 
-- charName returns a name that begins with the uppercase of a lowercase char
charName :: Char -> String  
charName 'a' = "Albert"  
charName 'b' = "Broseph"  
charName 'c' = "Cecil"  
-- addVectors adds two vectors together 
addVectors :: (Num a) => (a, a) -> (a, a) -> (a, a)  
addVectors (x1, y1) (x2, y2) = (x1 + x2, y1 + y2)  
-- firstTriple gets the first element of a triple
firstTriple :: (a, b, c) -> a  
firstTriple (x, _, _) = x  
-- secondTriple gets the second element of a triple
secondTriple :: (a, b, c) -> b  
secondTriple (_, y, _) = y  
-- thirdTriple gets the third element of a triple
thirdTriple :: (a, b, c) -> c  
thirdTriple (_, _, z) = z  
-- tupleList
tupleList = [(2,4), (1,6), (3,7), (5,9), (2,3), (1,1), (8,9), (9,10)]
addTuples xs = [a+b | (a,b) <- xs ]
-- head' returns the first element in a list
head' :: [a] -> a  
head' [] = error "head' requires at least one element in the list"  
head' (x:_) = x 
-- tell will display up to two elements of a list
tell :: (Show a) => [a] -> String  
tell [] = "The list is empty"  
tell (x:[]) = "The list has one element: " ++ show x  
tell (x:y:[]) = "The list has two elements: " ++ show x ++ " and " ++ show y  
tell (x:y:_) = "This list is long. The first two elements are: " ++ show x ++ " and " ++ show y  
-- length' gets the length of a list
length' :: (Num b) => [a] -> b
length' [] = 0
length' (_:xs) = 1 + length' xs
-- sum' gets the sum of a list of numbers
sum' :: (Num a) => [a] -> a
sum' [] = 0
sum' (x:xs) = x + sum' xs 
-- tellFirstLetter reports the first letter of a string and is an example of how to use all@ to reference the entire input
tellFirstLetter :: String -> String
tellFirstLetter "" = "Empty String!"
tellFirstLetter all@(x:xs) = "The first letter of " ++ all ++ " is " ++ [x]