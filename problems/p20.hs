main = do
  let num = product [1..100]
  let ans = sum [fromEnum x - 48 | x <- show num]
  print ans
