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
-- numberList is a list of numbers
numberList = [1,2,3,4,5,6]
-- combineLists puts two lists together
combineLists x y = x ++ y
-- prepending to the front with the cons operator is instananeous and combining has to traverse the left side list first
prependIt x y = x:y
-- getByIndex gets an element from a list by index
getByIndex x y = x !! y
numberList' = [6,5,4,3,2,1]
-- nestList will combine two lists and nest then inside a list
nestLists x y = x:[y]
-- isGreater returns True if the first element is greater
isGreater x y = x > y
-- isEqual returns True if the two elements are the same
isEqual x y = x == y
-- getHead returns the first element in a list
getHead x = head x
-- getTail returns every element after the first in a list
getTail x = tail x
-- getLast returns the last element in a list
getLast x = last x
-- getInit returns every element before the last in a list
getInit x = init x
-- getLength returns the length of a list
getLength x = length x
-- isNull returns True if a list is null
isNull x = null x
-- getReverse returns the reverse of a list
getReverse x = reverse x
-- take' gets the given number of elements from a given list
take' x y = take x y
-- drop' gets the list with the given number of elements removed from the list
drop' x y = drop x y
-- maximum' returns the greatest element in a list
maximum' x = maximum x
-- minimum' returns the greatest element in a list
minimum' x = minimum x
-- sum' returns the sum of a list
sum' x = sum x
-- product' returns the product of a list
product' x = product x
-- exists given an element and a list returns True if an element exists in a list
exists x y = x `elem` y
boomBangGuard :: Int -> Int -> Int -> String
boomBangGuard x y z 
    | odd x = "Boom"
    | x `mod` y == z = "Bang"
    | otherwise = show x
-- removeLowerCase removes all the lower case letters from a list
removeLowerCase x = [y | y <- x, y `elem` ['A'..'Z']]
-- removeEvenNumbers removes all of the even numbers in a nested list
removeEvenNumbers x = [ [z | z <- y, odd z ]| y <- x ] 
-- initialize triangles between x and y
triangles x y = [(a, b, c) | a <- [x..y], b <- [x..y], c <- [x..y]]
-- initialize right triangles between x and y
rightTriangles x y = [z | z <- triangles x y, let (a,b,c) = z in a^2 + b^2 == c^2 ] 
-- initialize right triangles of a given perimeter z between x and y
rightTrianglesOfPerimeter x y z = [result | result <- rightTriangles x y, let (a,b,c) = result in a^2 + b^2 == c^2,  let (a,b,c) = result in a+b+c == z ] 

main = do
    print 2
    print $ doubleIt 2
    print $ doubleThem 2 4
    print $ doubleUnder100 13
    print $ doubleUnder100 101
    print $ doubleUnder100' 85
    print $ doubleUnder100' 102
    print $ let'sFunction
    print $ yourName
    -- just the lowercase letters
    print $ [x | x <- yourName, x `elem` ['a'..'z']]
    -- Lists
    print $ numberList
    -- combine two lists of numbers
    print $ combineLists numberList (reverse numberList)
    -- strings are lists of chars
    print $ combineLists "hello" " haskell!"
    -- equivalent
    print $ combineLists (['h','e','l','l','o'] ++ [' ']) ['h','a','s','k','e','l','l','!']
    print $ prependIt 'I' " don't eat clams"  
    print $ prependIt 0 [1,2,3,4,5,6,7,8,9,10]
    print $ getByIndex "Tree" 1
    print $ nestLists numberList numberList'
    print $ isGreater numberList numberList'
    print $ isGreater numberList' [7]
    print $ isEqual numberList [1,2,3,4,5,6]
    print $ getHead numberList
    print $ getTail numberList
    print $ getLast numberList
    print $ getInit numberList
    print $ getLength numberList
    print $ isNull numberList
    print $ isNull []
    print $ getReverse numberList
    print $ take' 0 numberList
    print $ take' 1 numberList
    print $ take' 10 numberList
    print $ drop' 0 numberList
    print $ drop' 5 numberList
    print $ drop' 10 numberList
    print $ maximum'  numberList
    print $ minimum'  numberList
    print $ sum' numberList
    print $ product' numberList
    print $ exists 3 numberList
    print $ exists 10 numberList
    -- Ranges
    print $ [1..100]
    print $ ['a'..'z']
    print $ ['A'..'Z']
    print $ ['A'..'z']
    print $ ['a'..'Z']
    print $ [1, 3..100]
    print $ [1000, 995..0]
    print $ [(-0.1), (-0.05)..6]
    print $ take 10 [(-1000), (-987)..]
    print $ take 15 (cycle [1,4,8])
    print $ take 15 (repeat 8)
    print $ replicate 10 3
    -- List Comprehensions
    -- S = {2 * x | x union N, x<= 10} 
    -- where x is "2 * x" is the output function, N is the input set, and x <= 10 is the predicate
    -- for every element in the list multiply by two
    print $ [doubleIt x | x <- numberList] 
    -- return x from numberList where doubling x is more than 12
    print $ [x | x <- numberList, doubleIt x > 12]
    -- return x from a given range where dividing it by y equals 4
    print $ [x | x <- [25..150], y <- [1..25], x `mod` y == 4]
    -- return Boom for odd and Bang for even
    print $ [if odd x then "Boom" else "Bang" | x <- [1..100]]
    -- return Boom for odd and Bang for when the remainder of x/5 is 1 otherwise show the number
    print $ [ boomBangGuard x 5 1 | x <- [1..100]]
    -- use multiple predicates
    print $ [ x | x <- [1,4..100], x `mod` 4 == 2, x `mod` 10 /= 0]
    -- use multiple lists
    print $ [ x * y | x <- numberList, y <- numberList']
    -- multiple lists with predicate
    print $ [ x * y | x <- numberList, y <- numberList', odd (x * y) ]
    -- _ is used for throwaway values
    print $ ["a" | _ <- numberList]
    print $ removeLowerCase "PolitEly replACe thE filter"
    print $ removeEvenNumbers [numberList, numberList', numberList, numberList']
    -- Tuples
    print $ fst (1, "True")
    print $ snd (1, "True")
    print $ zip numberList numberList'
    print $ zip numberList ['a'..'z']
    print $ triangles 1 20
    print $ rightTriangles 1 20
    print $ rightTrianglesOfPerimeter 1 20 24