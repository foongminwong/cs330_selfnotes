import GHC.Exts
import Data.Function
import Data.Char
import Data.List
import Data.Ord

tango :: Ord a => (a,a) -> a
tango (a,b) = max a b
