module SortList ( sortList ) where
  
sortList :: (Ord a) => [a] -> [a]
sortList (x:xs) = sortList [y | y <- xs, y <= x] ++ [x] ++ sortList [y | y <- xs, y > x]
sortList [] = []