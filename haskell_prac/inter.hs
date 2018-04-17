intercalate :: [a] -> [[a]] -> [a]
intercalate s [] = []
intercalate s [x] = x
intercalate s (x:xs) = x ++ s ++ (intercalate s xs)

intersperse :: a -> [a] -> [a]
intersperse s [] = []
intersperse s [x] = [x]
intersperse s (x:xs) = x : s : (intersperse s xs)
