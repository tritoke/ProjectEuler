main :: IO()
main = do
  let digits = show $ 2^1000
  print $ sum [fromEnum x - 48 | x <- digits]
