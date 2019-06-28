module Tutorial.Guards(
    execute,
) where

execute = do
    print $ "bmiTell 19 is " ++ bmiTell 19
    print $ "bmiTell' 150 56 is " ++ bmiTell' 150 56
    print $ "max' 5 10 is " ++ show (max' 5 10)
    print $ "max'' 8 7 is " ++ show (max'' 8 7)
    print $ "'A' `compare'` 'B' is " ++ show ('A' `compare'` 'B')


-- bmiTell takes a bmi and criticizes it in some way
bmiTell :: (RealFloat a) => a -> String
bmiTell bmi
    | bmi <= 18.5 = "You're underweight, you emo, you!"  
    | bmi <= 25.0 = "You're supposedly normal. Pffft, I bet you're ugly!"  
    | bmi <= 30.0 = "You're fat! Lose some weight, fatty!"  
    | otherwise   = "You're a whale, congratulations!"  
-- bmiTell takes a weight and height, calculates the bmi and criticizes it in some way
bmiTell' :: (RealFloat a) => a -> a -> String  
bmiTell' weight height  
    | weight / height ^ 2 <= 18.5 = "You're underweight, you emo, you!"  
    | weight / height ^ 2 <= 25.0 = "You're supposedly normal. Pffft, I bet you're ugly!"  
    | weight / height ^ 2 <= 30.0 = "You're fat! Lose some weight, fatty!"  
    | otherwise                 = "You're a whale, congratulations!" 
-- max' is a custom max function using guards returns the greater of two things
max' :: (Ord a) => a -> a -> a  
max' a b   
    | a > b     = a  
    | otherwise = b  
-- max'' demonstrates how guards can be written inline
max'' :: (Ord a) => a -> a -> a  
max'' a b | a > b = a | otherwise = b  
-- compare' implements compare using guards
compare' :: (Ord a) => a -> a -> Ordering
a `compare'` b
    | a > b = GT
    | a == b = EQ
    | otherwise = LT