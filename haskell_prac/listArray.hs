import Data.Array
stringToArray :: String -> Array
stringToArray s = listArray (0, length s - 1) s
