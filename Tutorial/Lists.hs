module Tutorial.Lists(
 execute,
 numberList,
 combineLists,
 prependIt,
 getByIndex,
 numberList',
 nestLists,
 isGreater,
 isEqual,
 getHead,
 getTail,
 getLast,
 getInit,
 getLength,
 getReverse,
 take',
 drop',
 sum',
 maximum',
 minimum',
 product',
 exists
) where

execute = do 
    -- Lists
    print $ ("numberList is ", numberList)
    -- combine two lists of numbers
    print $ ("combineLists numberList (reverse numberList) is ",combineLists numberList (reverse numberList))
    -- strings are lists of chars
    print $ ("combineLists \"hello\" \" haskell!\" is ", combineLists "hello" " haskell!")
    -- equivalent
    print $ ("combineLists (['h','e','l','l','o'] ++ [' ']) ['h','a','s','k','e','l','l','!'] is ", combineLists (['h','e','l','l','o'] ++ [' ']) ['h','a','s','k','e','l','l','!'])
    print $ ("prependIt 'I' \" don't eat clams\" is ", prependIt 'I' " don't eat clams" ) 
    print $ ("prependIt 0 [1,2,3,4,5,6,7,8,9,10] is ", prependIt 0 [1,2,3,4,5,6,7,8,9,10])
    print $ ("getByIndex \"Tree\" 1 is ", getByIndex "Tree" 1)
    print $ ("nestLists numberList numberList' is ", nestLists numberList numberList')
    print $ ("isGreater numberList numberList' is ", isGreater numberList numberList')
    print $ ("isGreater numberList' [7] is ", isGreater numberList' [7])
    print $ ("isEqual numberList [1,2,3,4,5,6] is ", isEqual numberList [1,2,3,4,5,6])
    print $ ("getHead numberList is ", getHead numberList)
    print $ ("getTail numberList is ", getTail numberList)
    print $ ("getLast numberList is ", getLast numberList)
    print $ ("getInit numberList is ", getInit numberList)
    print $ ("getLength numberList is ", getLength numberList)
    print $ ("isNull numberList is ", isNull numberList)
    print $ ("isNull [] is ", isNull [])
    print $ ("getReverse numberList is ", getReverse numberList)
    print $ ("take' 0 numberList is ", take' 0 numberList)
    print $ ("take' 1 numberList is ", take' 1 numberList)
    print $ ("take' 10 numberList is ", take' 10 numberList)
    print $ ("drop' 0 numberList is ", drop' 0 numberList)
    print $ ("drop' 5 numberList is ", drop' 5 numberList)
    print $ ("drop' 10 numberList is ", drop' 10 numberList)
    print $ ("maximum'  numberList is ", maximum'  numberList)
    print $ ("minimum'  numberList is ", minimum'  numberList)
    print $ ("sum' numberList is ", sum' numberList)
    print $ ("product' numberList is ", product' numberList)
    print $ ("exists 3 numberList is ", exists 3 numberList)
    print $ ("exists 10 numberList is ", exists 10 numberList)

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