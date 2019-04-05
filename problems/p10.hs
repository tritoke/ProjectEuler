main :: IO()
main = do
  contents <- readFile "resources/prime_output"
  print $ sum [read x :: Int | x <- lines contents]
