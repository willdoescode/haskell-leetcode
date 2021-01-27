module SmallerNumbersThanCurrent ( smallerNumbersThanCurrent ) where

-- https://leetcode.com/problems/how-many-numbers-are-smaller-than-the-current-number/
  
smallerNumbersThanCurrent :: [Integer] -> [Integer]
smallerNumbersThanCurrent l = map (\x -> foldl (\i v -> if v then i + 1 else i) 0 (map (<x) l)) l
