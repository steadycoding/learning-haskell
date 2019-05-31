module Tutorial.Ranges(
    execute
) where
    execute = do 
    print $ ("[1..100] is ", [1..100])
    print $ ("['a'..'z'] is ", ['a'..'z'])
    print $ ("['A'..'Z'] is ", ['A'..'Z'])
    print $ ("['A'..'z'] is ", ['A'..'z'])
    print $ ("['a'..'Z'] is ", ['a'..'Z'])
    print $ ("[1, 3..100] is ", [1, 3..100])
    print $ ("[1000, 995..0] is ", [1000, 995..0])
    print $ ("[(-0.1), (-0.05)..6] is ", [(-0.1), (-0.05)..6])
    print $ ("take 10 [(-1000), (-987)..] is ", take 10 [(-1000), (-987)..])
    print $ ("take 15 (cycle [1,4,8]) is ", take 15 (cycle [1,4,8]))
    print $ ("take 15 (repeat 8) is ", take 15 (repeat 8))
    print $ ("replicate 10 3 is ", replicate 10 3)