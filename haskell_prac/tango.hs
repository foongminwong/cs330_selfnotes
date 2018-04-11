import Data.Function
import Data.Char
import Data.List

tango :: Ord a => (a,a) -> a
tango (a,b) = max a b
