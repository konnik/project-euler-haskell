-- Problem 5
-- 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
-- What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

import Data.List
import Data.Maybe (listToMaybe)

addUniqueFactor :: [Int] -> Int -> [Int]
addUniqueFactor xs n = xs ++ ((factors n) \\ xs)
    where
        factors n = unfoldr (\ n -> listToMaybe [(x, div n x) | x <- [2..n], mod n x==0]) n

findNumber :: [Int] -> Int
findNumber input = product . (foldl addUniqueFactor []) $ input

main = do
   let answer = findNumber [1..20]
   putStrLn ("Answer: " ++ show answer)


