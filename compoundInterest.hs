-- compoundInterest takes P as principle r as interest rate n as number of times compounded t as time in years PMT as regular monthly payment
compoundInterestForPrinciple :: Floating a => a -> a -> a -> a -> a
compoundInterestForPrinciple p r n t = p * (1 + (r/n))**(n * t) --1000 * (1 + (0.7/12))**(0.7*12) = 1610.0107997336618
futureValueOfSeries :: Floating a => a -> a -> a -> a -> a
futureValueOfSeries pmt r n t = pmt * (((1 + (r/n))**(n * t) - 1) / (r/n)) --200 * (((1 + (0.07/12))**(12 * 30) - 1) / (0.07/12))
compoundInterestWithRegularPayments :: Floating a => a -> a -> a -> a -> a -> a 
compoundInterestWithRegularPayments p r n t pmt = compoundInterestForPrinciple p r n t + futureValueOfSeries pmt r n t
divideFloat:: Fractional a => a -> a -> a -- Why is this not Float -> Int -> Float ?
divideFloat x y = x/y
main = do
    print $ compoundInterestWithRegularPayments 1000 0.07 12 30 200
    print $ divideFloat 0.07 12