module Utilities.InvestmentCalculator(
    execute
) where

execute = do
    print $ getAveragePrice (sumFirstTuple listOfPurchases1) (sumSecondTuple listOfPurchases1)
    print $ getAveragePrice (sumFirstTuple listOfPurchases2) (sumSecondTuple listOfPurchases2)
    print $ getAveragePrice (sumFirstTuple listOfPurchases2) (sumSecondTuple listOfPurchases2)

-- findAveragePrice takes a list of tuples (partialCoinAmount, USD) and returns the total (sumOfPartialCoinAmount, sumUSD, AvgUSD)
listOfPurchases1 = [
    (0.00461192,21.49),
    (0.01150052,51.99),
    (0.0117772,51.99),
    (0.01349735,51.99),
    (0.01124322,51.99)]

listOfPurchases2 = [
     (0.06607071,21.49),
    (0.1489692,51.99),
    (0.16955064,51.99),
    (0.17573052,51.99),
    (0.16001471,51.99)
    ]

listOfPurchases3 = [
    (0.45870592,26.49),
    (0.36072538,26.49),
    (0.51502323,2649),
    (0.47364093,26.49)
    ]
    
sumFirstTuple :: (Foldable t, Num a) => t (a, b) -> a
sumFirstTuple w = foldl (\acc (y,_) -> (+) y acc) 0 w
sumSecondTuple :: (Foldable t, Num a1) => t (a2, a1) -> a1
sumSecondTuple w = foldl (\acc (_,y) -> (+) y acc) 0 w
getAveragePrice a b = b / a