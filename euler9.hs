-- Problem 9
-- There exists exactly one Pythagorean triplet for which a + b + c = 1000.
-- Find the product abc.

triplets = [a*b*c | a<-[1..1000], 
                    b <-[a+1..999-a], 
                    let c = 1000-b-a, 
                    a^2 + b^2 == c^2]

main = do
    let answer = head triplets
    putStrLn ("Answer: " ++ show answer)