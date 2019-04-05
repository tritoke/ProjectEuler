choose :: Integer -> Integer -> Integer
choose n r = product [1..n] `div` (product [1..r] * product [1..n-r])

main :: IO()
main = print $ choose 40 20
