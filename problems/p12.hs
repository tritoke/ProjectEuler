solve :: Int -> Int -> Int
solve x index
  | x < 1 = -1
  | 500 < sum [1 :: Int | y <- [1 .. x], x `mod` y == 0] = x
  | otherwise = solve (x + index) $ index + 1

main :: IO()
main = print $ solve 1 2
  
