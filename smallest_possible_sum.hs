-- https://www.codewars.com/kata/smallest-possible-sum/train/haskell
-- Given an array X of positive integers, its elements are to be transformed
-- by running the following operation on them as many times as required:
-- if X[i] > X[j] then X[i] = X[i] - X[j]
-- When no more transformations are possible, return its sum.

module SmallestPossibleSum where

main :: IO ()
main = do
  putStr "Expected: 9, got: "
  print $ smallestPossibleSum [6,9,21]
  putStr "Expected: 3, got: "
  print $ smallestPossibleSum [1,21,55]
  putStr "Expected: 12, got: "
  print $ smallestPossibleSum [4,16,24]
  putStr "Expected: 12, got: "
  print $ smallestPossibleSum [30,12]
  putStr "Expected: 923, got: "
  print $ smallestPossibleSum [71,71,71,71,71,71,71,71,71,71,71,71,71]
  putStr "Expected: 5, got: "
  print $ smallestPossibleSum [3,13,23,7,83]
  putStr "Expected: 132, got: "
  print $ smallestPossibleSum [60,12,96,48,60,24,72,36,72,72,48]

smallestPossibleSum :: (Integral a) => [a] -> a
smallestPossibleSum m = (fromIntegral . length) m * listGCD m

listGCD :: (Integral a) => [a] -> a
listGCD (x:xs) = foldl gcd x xs
