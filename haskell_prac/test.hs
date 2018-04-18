-- example
modby7 :: Int -> Bool
modby7 x = x `mod` 7 == 0

cube :: Int -> Int
cube x = x * x * x

answer :: [Int] -> Int
answer xs= sum (map cube(filter modby7 xs))
