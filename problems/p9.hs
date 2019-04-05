findTriple :: (Int, Int, Int) -> Int
findTriple (a, b, c)
  | (a^2 + b^2) == c^2 = a*b*c
  | b < c = findTriple (a, b+1, c-1)
  | c <= b = findTriple (a+1, 1, 998 - a)
  | a >= c = -1
  | otherwise = -1

main :: IO()
main = print $ findTriple (1, 1, 998)
