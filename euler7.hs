-- Problem 7
-- By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
-- What is the 10 001st prime number?

import Data.List (unfoldr)
import Data.Maybe (listToMaybe)

sqrtInt :: Int -> Int
sqrtInt = floor . sqrt . fromIntegral

factors :: Int -> [Int]
factors n = unfoldr (\n -> listToMaybe [(x, div n x) | x <- 2:[3,5..sqrtInt n], mod n x==0]) n

isPrime :: Int -> Bool
isPrime n = n>1 && null (factors n)

nthPrime :: Int -> Int
nthPrime n = last . (take n) . (filter isPrime) $ 2:[3,5..]

main = do
    let answer = nthPrime 10001
    putStrLn ("Answer: " ++ show answer)