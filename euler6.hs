-- Problem 6
main = do
    let answer = (sum [1..100]^2) - (sum [x*x|x<-[1..100]])
    putStrLn ("Answer: " ++ show answer)