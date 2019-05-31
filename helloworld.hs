import Data.Typeable
import Tutorial.Basics
import Tutorial.Lists
import Tutorial.Ranges
import Tutorial.ListComprehensions
import Utilities.InvestmentCalculator
-- if in ghci in termal use :set prompt "ghci> " to change from Prelude to ghci

-- initialize triangles between x and y
triangles x y = [(a, b, c) | a <- [x..y], b <- [x..y], c <- [x..y]]
-- initialize right triangles between x and y
rightTriangles x y = [z | z <- triangles x y, let (a,b,c) = z in a^2 + b^2 == c^2 ] 
-- initialize right triangles of a given perimeter z between x and y
rightTrianglesOfPerimeter x y z = [result | result <- rightTriangles x y, let (a,b,c) = result in a^2 + b^2 == c^2,  let (a,b,c) = result in a+b+c == z ] 
-- removeNonLowercase removes all characters from a string that are not lowercase
removeNonLowercase :: String -> String
removeNonLowercase st = [r | r <- st, r `elem` ['a'..'z']]
-- addFour adds four integers together
addFour :: Int -> Int -> Int -> Int -> Int 
addFour w x y z = w + x + y + z
-- factorial produces the product of a range
factorial :: Integer -> Integer 
factorial x = product [1..x]
-- circumference calculates the circumference of a circle given a radius
circumference :: Float -> Float
circumference r = 2 * pi * r
-- circumference' calculates the circumference of a circle given a radius
circumference' :: Double -> Double
circumference' r = 2 * pi * r
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

-- given a list of tuples add sum the first and last elements
-- add all the partials, add all they purchases, divide the sum of purchases by the partials
main = do
    --Utilities.InvestmentCalculator.execute
    -- Tutorial.Basics.execute
    -- Tutorial.Lists.execute
    -- Tutorial.Ranges.execute
    Tutorial.ListComprehensions.execute
    -- -- Tuples
    -- print $ fst (1, "True")
    -- print $ snd (1, "True")
    -- print $ zip numberList numberList'
    -- print $ zip numberList ['a'..'z']
    -- print $ triangles 1 20
    -- print $ rightTriangles 1 20
    -- print $ rightTrianglesOfPerimeter 1 20 24
    -- -- Types and Typeclasses
    -- -- print typeOf triangles doesn't give the same output as :t in ghci because of the static this 
    -- print $ removeNonLowercase "FleaBrInGingsomeTHINGThaTIsOkSWell"
    -- print $ addFour 1 2 3 4
    -- print $ factorial 10
    -- print $ circumference 10
    -- print $ circumference' 10
    -- print ":t head is head :: [a] -> a"
    -- print ":t fst is fst :: (a, b) -> a "
    -- print ":t (==) is (==) :: (Eq a) => a -> a -> Bool"
    -- print "To call an infix function as a prefix call it surrounded with ()"
    -- print "Everything before => is a class constraint so for == a needs to belong to Eq"
    -- print ":t elem is elem :: (Eq a) => a -> [a] -> Bool"
    -- -- typeclasses
    -- print "Eq is used for types that support equality testing"
    -- print "Ord is used for types that have an ordering"
    -- print ":t (>) is (>) :: (Ord a) => a -> a -> Bool"
    -- print "t compare is compare :: Ord a => a -> a -> Ordering"
    -- print $ "1 `compare` 2 is " ++ show (1 `compare` 2)
    -- print $ "2 `compare` 1 is " ++ show (2 `compare` 1)
    -- print $ "2 `compare` 2 is " ++ show (2 `compare` 2)
    -- print ":t show is show :: Show a => a -> String"
    -- print $ "show 'a' is " ++ show 'a'
    -- print $ "show ['a'] is " ++ show ['a']
    -- print $ "show \"a\" is " ++ show "a"
    -- print $ "show \"ab\" is " ++ show "ab"
    -- print $ "show 1 is " ++ show 1
    -- print $ "show True is " ++ show True
    -- -- TODO: How else to print a string and another type on the same line?
    -- print $ (":t read is read :: (Read a) => String -> a  " )
    -- print $ ("read \"True\" is ", read "True" || False)
    -- print $ ("read \"True\" is ", read "True" :: Bool)
    -- print $ ("read \"8.2\" + 3.8 is ", read "8.2" + 3.8)
    -- print $ ("read \"5\" - 2  is ", read "5" - 2)
    -- print $ ("read \"[1,2,3,4]\" ++ [3]  is ", read "[1,2,3,4]" ++ [3])
    -- print $ ("read \"[1,2,3,4]\" ++ [3]  is ", read "[1,2,3,4]" ++ [3])
    -- print $ ("read \"4\" is ", read "4" :: Int)
    -- print $ ("read \"4\" is ", read "4" :: Float)
    -- print $ ("read \"4\" is ", read "4" :: Double)
    -- print "Enum members are sequentially ordered types including: (),Bool, Char, Ordering, Int, Integer, Float and Double."
    -- print $ ("You can call succ and pred on Enum members", "succ 'a'", succ 'a')
    -- print $ ("You can call succ and pred on Enum members", "succ EQ", succ EQ)
    -- print "Bounded members have an upper and a lower bound."
    -- print $ ("minBound :: Int", minBound :: Int, "maxBound :: Int", maxBound :: Int)
    -- print $ ("minBound :: Char", minBound :: Char, "maxBound :: Char", maxBound :: Char)
    -- print $ ("minBound :: Bool", minBound :: Bool, "maxBound :: Bool", maxBound :: Bool)
    -- print ":t minBound is minBound :: Bounded a => a"
    -- print $ ("minBound :: (Bool, Int, Char)", minBound :: (Bool, Int, Char), "maxBound :: (Bool, Int, Char)", maxBound :: (Bool, Int, Char))
    -- print $ ("20 :: Int is ", 20 :: Int)
    -- print $ ("20 :: Integer is ", 20 :: Integer)
    -- print $ ("20 :: Float is ", 20 :: Float)
    -- print $ ("20 :: Double is ", 20 :: Double)
    -- print ":t (*) is (*) :: (Num a) => a -> a -> a"
    -- print "To join Num, a type must already be friends with Show and Eq."
    -- print "Integral typelclass consists of Int and Integer"
    -- print ":t of fromIntegral is fromIntegral :: (Num b, Integral a) => a -> b"
    -- print $ fromIntegral (length [1,2,3,4]) + 3.2
    -- -- Pattern matching
    -- print $ lucky 777
    -- print $ lucky 7
    -- print $ sayInt 0
    -- print $ sayInt 1
    -- print $ sayInt 2
    -- print $ sayInt 3
    -- print $ sayInt 4
    -- print $ sayInt 5
    -- print $ sayInt 6
    -- print $ sayInt 7
    -- print $ sayInt 8
    -- print $ sayInt 9
    -- print $ factorial' 10
    -- -- print $ charName 'd' -- produces exception : Non-exhaustive patterns in function charName
    -- print $ charName 'a'
    -- print $ addVectors (7,1) (3,9)
    -- print $ firstTriple (4, 6, 1)
    -- print $ secondTriple (4, 6, 1)
    -- print $ thirdTriple (4, 6, 1)
    -- print $ addTuples tupleList
    -- print $ head' numberList
    -- print $ head' tupleList
    -- -- print $ head' "" -- produces exception : helloworld.hs: head' requires at least one element in the list
    -- -- print $ head' [] :: Int -- produces exception : Couldn't match expected type ‘IO b’ with actual type ‘Int’
    -- print $ tell [1,2,3]
    -- print $ tell "AB"
