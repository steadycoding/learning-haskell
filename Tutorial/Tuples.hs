module Tutorial.Tuples(
 Tutorial.Tuples.execute,
) where

import Tutorial.Lists as Lists

-- execute demonstrates tuples by printing out the functions with defaults
execute = do
    print $ fst (1, "True")
    print $ snd (1, "True")
    print $ zip Lists.numberList Lists.numberList'
    print $ zip Lists.numberList ['a'..'z']
    print $ triangles 1 20
    print $ rightTriangles 1 20
    print $ rightTrianglesOfPerimeter 1 20 24

-- initialize triangles between x and y
triangles x y = [(a, b, c) | a <- [x..y], b <- [x..y], c <- [x..y]]
-- initialize right triangles between x and y
rightTriangles x y = [z | z <- triangles x y, let (a,b,c) = z in a^2 + b^2 == c^2 ] 
-- initialize right triangles of a given perimeter z between x and y
rightTrianglesOfPerimeter x y z = [result | result <- rightTriangles x y, let (a,b,c) = result in a^2 + b^2 == c^2,  let (a,b,c) = result in a+b+c == z ] 
