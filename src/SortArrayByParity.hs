module SortArrayByParity ( sortArrayByParity ) where

-- https://leetcode.com/problems/sort-array-by-parity/

sortArrayByParity :: [Int] -> [Int]
sortArrayByParity x = filter even x ++ filter odd x
