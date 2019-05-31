module Tutorial.TypesAndTypeclasses(
    execute,
) where
   
execute = do
    -- print typeOf triangles doesn't give the same output as :t in ghci because of the static this 
    print $ removeNonLowercase "FleaBrInGingsomeTHINGThaTIsOkSWell"
    print $ addFour 1 2 3 4
    print $ factorial 10
    print $ circumference 10
    print $ circumference' 10
    print ":t head is head :: [a] -> a"
    print ":t fst is fst :: (a, b) -> a "
    print ":t (==) is (==) :: (Eq a) => a -> a -> Bool"
    print "To call an infix function as a prefix call it surrounded with ()"
    print "Everything before => is a class constraint so for == a needs to belong to Eq"
    print ":t elem is elem :: (Eq a) => a -> [a] -> Bool"
    -- typeclasses
    print "Eq is used for types that support equality testing"
    print "Ord is used for types that have an ordering"
    print ":t (>) is (>) :: (Ord a) => a -> a -> Bool"
    print "t compare is compare :: Ord a => a -> a -> Ordering"
    print $ "1 `compare` 2 is " ++ show (1 `compare` 2)
    print $ "2 `compare` 1 is " ++ show (2 `compare` 1)
    print $ "2 `compare` 2 is " ++ show (2 `compare` 2)
    print ":t show is show :: Show a => a -> String"
    print $ "show 'a' is " ++ show 'a'
    print $ "show ['a'] is " ++ show ['a']
    print $ "show \"a\" is " ++ show "a"
    print $ "show \"ab\" is " ++ show "ab"
    print $ "show 1 is " ++ show 1
    print $ "show True is " ++ show True
    -- TODO: How else to print a string and another type on the same line?
    print $ (":t read is read :: (Read a) => String -> a  " )
    print $ ("read \"True\" is ", read "True" || False)
    print $ ("read \"True\" is ", read "True" :: Bool)
    print $ ("read \"8.2\" + 3.8 is ", read "8.2" + 3.8)
    print $ ("read \"5\" - 2  is ", read "5" - 2)
    print $ ("read \"[1,2,3,4]\" ++ [3]  is ", read "[1,2,3,4]" ++ [3])
    print $ ("read \"[1,2,3,4]\" ++ [3]  is ", read "[1,2,3,4]" ++ [3])
    print $ ("read \"4\" is ", read "4" :: Int)
    print $ ("read \"4\" is ", read "4" :: Float)
    print $ ("read \"4\" is ", read "4" :: Double)
    print "Enum members are sequentially ordered types including: (),Bool, Char, Ordering, Int, Integer, Float and Double."
    print $ ("You can call succ and pred on Enum members", "succ 'a'", succ 'a')
    print $ ("You can call succ and pred on Enum members", "succ EQ", succ EQ)
    print "Bounded members have an upper and a lower bound."
    print $ ("minBound :: Int", minBound :: Int, "maxBound :: Int", maxBound :: Int)
    print $ ("minBound :: Char", minBound :: Char, "maxBound :: Char", maxBound :: Char)
    print $ ("minBound :: Bool", minBound :: Bool, "maxBound :: Bool", maxBound :: Bool)
    print ":t minBound is minBound :: Bounded a => a"
    print $ ("minBound :: (Bool, Int, Char)", minBound :: (Bool, Int, Char), "maxBound :: (Bool, Int, Char)", maxBound :: (Bool, Int, Char))
    print $ ("20 :: Int is ", 20 :: Int)
    print $ ("20 :: Integer is ", 20 :: Integer)
    print $ ("20 :: Float is ", 20 :: Float)
    print $ ("20 :: Double is ", 20 :: Double)
    print ":t (*) is (*) :: (Num a) => a -> a -> a"
    print "To join Num, a type must already be friends with Show and Eq."
    print "Integral typelclass consists of Int and Integer"
    print ":t of fromIntegral is fromIntegral :: (Num b, Integral a) => a -> b"
    print $ fromIntegral (length [1,2,3,4]) + 3.2

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