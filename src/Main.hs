module Main where

import FizzBuzz
import TwoSum
import RunningSum
import SmallerNumbersThanCurrent
import NumOfStepsToReduceNumToZero
import TargetArrayInGivenOrder
import SortArrayByParity
import ToLowerCase
import MinimumIndexSumofTwoLists
import SortList

main :: IO ()
main = do
  putStrLn "<-- FizzBuzz -->"
  putStrLn $ unlines $ fizzbuzz [1..100]

  putStrLn "<-- TwoSum -->"
  print $ twosum [4, 5, 2, 5] 7

  putStrLn "<-- Running Sum -->"
  print $ runningsum [1, 1, 1, 1, 1]
  print $ runningsum [1, 2, 3, 4]

  putStrLn "<-- Smaller Numbers Than Current -->"
  print $ smallerNumbersThanCurrent [8, 1, 2, 2, 3]
  print $ smallerNumbersThanCurrent [6, 5, 4, 8]

  putStrLn "<-- Num Of Steps to Reduce Num To Zero -->"
  print $ numOfStepsToReduceNumToZero 14
  print $ numOfStepsToReduceNumToZero 8
  print $ numOfStepsToReduceNumToZero 123

  putStrLn "<-- Target Array In Given Order -->"
  print $ targetArrayInGivenOrder [0, 1, 2, 3, 4] [0, 1, 2, 2, 1]
  print $ targetArrayInGivenOrder [1, 2, 3, 4, 0] [0, 1, 2, 3, 0]

  putStrLn "<-- Sort Array By Parity -->"
  print $ sortArrayByParity [3, 1, 2, 4]
  print $ sortArrayByParity [1, 2, 3, 4]
  putStrLn "<-- To Lower Case -->"
  putStrLn $ toLowerCase "Hello"
  putStrLn $ toLowerCase "LOVELY"

  putStrLn "<-- Minimum Index Sum of Two Lists -->"
  print $ minimumIndexSumofTwoLists ["Shogun","Tapioca Express","Burger King","KFC"]
   ["Piatti","The Grill at Torrey Pines","Hungry Hunter Steakhouse","Shogun"]
  print $ minimumIndexSumofTwoLists ["Shogun","Tapioca Express","Burger King","KFC"]
    ["KFC","Shogun","Burger King"]
  print $ minimumIndexSumofTwoLists ["Shogun","Tapioca Express","Burger King","KFC"]
    ["KFC","Burger King","Tapioca Express","Shogun"]
  print $ minimumIndexSumofTwoLists ["Shogun","Tapioca Express","Burger King","KFC"]
    ["KNN","KFC","Burger King","Tapioca Express","Shogun"]

  putStrLn "<-- Sort List -->"
  print $ sortList ([9, 3, 4, 1] :: [Int]) -- cast types for no ide warning
  print $ (sortList . reverse . take 10) ([0..] :: [Int]) -- cast types for no ide warning
  print $ sortList ['c', 'a', 'f', 'y']
