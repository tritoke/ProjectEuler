import Data.Set (fromList)

d :: Int -> Int
d n = sum [x | x <- [1..n-1], n `mod` x == 0]

main :: IO()
main = do
  let amicables = [x | x <- [1 .. 10000 - 1], d (d x) == x && d x /= x]
  print $ sum amicables
