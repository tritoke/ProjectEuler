fib :: [Int] -> [Int]
fib xs = if head xs < 4000000
            then fib (head xs + head (tail xs):xs)
            else xs

main = do
 let fibs  = fib [1, 1]
 let final = [x | x <- fibs, x `mod` 2 == 0]
 let total = sum final
 print total
