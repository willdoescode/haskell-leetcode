module TwoSum ( twosum ) where

twosum :: [Integer] -> Integer -> (Int, Int)
twosum [] _ = (-1, -1)
twosum l target = head ([(x, y) | x <- r, y <- r, x < y && l !! x + l !! y == target])
  where r = [0..length l-1]
