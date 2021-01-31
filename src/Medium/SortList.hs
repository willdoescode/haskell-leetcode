module SortList ( sortList ) where

-- Quick Sort

sortList :: (Ord a) => [a] -> [a]
sortList (x:xs) = sortList [y | y <- xs, y <= x] ++ [x] ++ sortList [y | y <- xs, y > x]
sortList [] = []