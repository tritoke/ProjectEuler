collatzLen :: (Int, Int, Int) -> (Int, Int)
collatzLen (num, original, len)
  | num `mod` 2 == 0 = collatzLen (num `div` 2, original, len + 1)
  | num == 1 = (len, original)
  | otherwise = collatzLen (3 * num + 1, original, len + 1)

main :: IO ()
main             = do
  let seriesLens = map collatzLen [(x, x, 0) | x <- [1 .. 1000000]]
  print $ snd $ maximum seriesLens
