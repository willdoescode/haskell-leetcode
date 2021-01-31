module MagicSquare ( magicSquare ) where

-- https://www.hackerrank.com/challenges/magic-square-forming/problem?h_r=internal-search

import Data.List

type Square = [[Int]]

magic :: Square
magic = [ [8, 1, 6]
        , [3, 5, 7]
        , [4, 9, 2] ]

rot90 :: Square -> Square
rot90 = map reverse . transpose

refl :: Square -> Square
refl = transpose

allMagic :: [Square]
allMagic = take 4 (iterate rot90 magic) ++ take 4 (iterate rot90 $ refl magic)

distance :: Square -> Square -> Int
distance s1 s2 = sum $ map abs $ zipWith (-) (concat s1) (concat s2)

magicSquare :: Square -> Int
magicSquare s = minimum $ map (distance s) allMagic
