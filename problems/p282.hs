a :: (Integer, Integer) -> Integer
a (m,n) 
  | m == 0 = n + 1
  | m > 0 && n == 0 = a (m - 1,  1)
  | otherwise = a (m - 1, a (m, n - 1))

main :: IO()
main = do
  let total = sum [a (x,x) | x <- [0..6]]
  print total
  let ans = total `mod` 14^8
  print ans

