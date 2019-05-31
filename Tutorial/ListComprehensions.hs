module Tutorial.ListComprehensions(
    Tutorial.ListComprehensions.execute,
    boomBangGuard,
    removeLowerCase,
    removeEvenNumbers
) where

import Tutorial.Lists as Lists
import Tutorial.Basics as Basics

execute = do
    -- S = {2 * x | x union N, x<= 10} 
    -- where x is "2 * x" is the output function, N is the input set, and x <= 10 is the predicate
    -- for every element in the list multiply by two
    print $ [Basics.doubleIt x | x <- Lists.numberList] 
    -- return x from numberList where doubling x is more than 12
    print $ [x | x <- Lists.numberList, Basics.doubleIt x > 12]
    -- return x from a given range where dividing it by y equals 4
    print $ [x | x <- [25..150], y <- [1..25], x `mod` y == 4]
    -- return Boom for odd and Bang for even
    print $ [if odd x then "Boom" else "Bang" | x <- [1..100]]
    -- return Boom for odd and Bang for when the remainder of x/5 is 1 otherwise show the number
    print $ [ boomBangGuard x 5 1 | x <- [1..100]]
    -- use multiple predicates
    print $ [ x | x <- [1,4..100], x `mod` 4 == 2, x `mod` 10 /= 0]
    -- use multiple lists
    print $ [ x * y | x <- Lists.numberList, y <- Lists.numberList']
    -- multiple lists with predicate
    print $ [ x * y | x <- Lists.numberList, y <- Lists.numberList', odd (x * y) ]
    -- _ is used for throwaway values
    print $ ["a" | _ <- Lists.numberList]
    print $ removeLowerCase "PolitEly replACe thE filter"
    print $ removeEvenNumbers [Lists.numberList, Lists.numberList', Lists.numberList, Lists.numberList']

boomBangGuard :: Int -> Int -> Int -> String
boomBangGuard x y z 
    | odd x = "Boom"
    | x `mod` y == z = "Bang"
    | otherwise = show x
-- removeLowerCase removes all the lower case letters from a list
removeLowerCase x = [y | y <- x, y `elem` ['A'..'Z']]
-- removeEvenNumbers removes all of the even numbers in a nested list
removeEvenNumbers x = [ [z | z <- y, odd z ]| y <- x ] 