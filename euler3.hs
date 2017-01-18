import Data.List (unfoldr)
import Data.Maybe (listToMaybe)

import Data.List
import Data.List.Ordered

factors :: Int -> [Int]
factors n = unfoldr (\ n -> listToMaybe [(x, div n x) | x <- [2..n], mod n x==0]) n

main = do
    let answer = maximum . factors $ 600851475143
    putStrLn ("Answer: " ++ show answer)