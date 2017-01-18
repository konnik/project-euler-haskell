digits :: Int -> [Int]
digits n 
    | n < 10 = [n]
    | otherwise = mod n 10 : digits (div n 10)

palindrome :: Int -> Bool
palindrome n = digits n == (reverse . digits) n

combine :: [Int] -> [Int] -> [Int]
combine as bs = [a*b | a <- as, b <- bs]

main = do
    let answer =  maximum (filter palindrome  (combine [0..999] [0..999]))
    putStrLn ("Answer: " ++ show answer)