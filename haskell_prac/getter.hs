getInt :: IO Int
getInt = do
  line <- getLine
  let int = read line :: Int
  return int

main = do
  a <- getInt
  b <- getInt
  putStrLn $ show $ replicate b a
