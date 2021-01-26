module SmallerNumbersThanCurrent ( smallerNumbersThanCurrent ) where

smallerNumbersThanCurrent :: [Integer] -> [Integer]
smallerNumbersThanCurrent l = map (\x -> foldl (\i v -> if v then i + 1 else i) 0 (map (<x) l)) l
