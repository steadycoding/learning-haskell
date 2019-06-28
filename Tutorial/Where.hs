module Tutorial.Where(
    execute,
) where

execute = do
    print $ "bmiTell 150 56 is: " ++ bmiTell 150 56 
    -- print $ "bmiTell' 150 56 is: " ++ bmiTell' 150 56 
    -- print $ "bmiTell'' 150 56 is: " ++ bmiTell'' 150 56 
    print $ "initials John Adams is: " ++ initials "John" "Adams"

-- bmiTell' :: (RealFloat a) => a -> a -> String  
-- bmiTell' weight height  
--     | bmi <= skinny = "You're underweight, you emo, you!"  
--     | bmi <= normal = "You're supposedly normal. Pffft, I bet you're ugly!"  
--     | bmi <= fat    = "You're fat! Lose some weight, fatty!"  
--     | otherwise     = "You're a whale, congratulations!"  
--     where bmi = weight / height ^ 2  
--         (skinny, normal, fat) = (18.5, 25.0, 30.0)

-- bmiTell'' :: (RealFloat a) => a -> a -> String  
-- bmiTell'' weight height  
--     | bmi <= skinny = "You're underweight, you emo, you!"  
--     | bmi <= normal = "You're supposedly normal. Pffft, I bet you're ugly!"  
--     | bmi <= fat    = "You're fat! Lose some weight, fatty!"  
--     | otherwise     = "You're a whale, congratulations!"  
--     where bmi = weight / height ^ 2  
--         skinny = 18.5
--         normal = 25.0
--         fat = 30.0

bmiTell :: (RealFloat a) => a -> a -> String  
bmiTell weight height  
    | bmi <= 18.5 = "You're underweight, you emo, you!"  
    | bmi <= 25.0 = "You're supposedly normal. Pffft, I bet you're ugly!"  
    | bmi <= 30.0 = "You're fat! Lose some weight, fatty!"  
    | otherwise   = "You're a whale, congratulations!"  
    where bmi = weight / height ^ 2  

initials :: String -> String -> String  
initials firstname lastname = [f] ++ ". " ++ [l] ++ "."  
    where (f:_) = firstname  
            (l:_) = lastname    