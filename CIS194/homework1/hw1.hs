{-# OPTIONS_GHC -Wall #-}

-- Converts a positive(> 0) Integer to a list of Integers
toDigits :: Integer -> [Integer]
toDigits n
  | (n > 0) = (toDigits (div n 10)) ++ [(n `mod` 10)]
  | otherwise = []

-- Converts a positive(> 0) Integer to a list of Integers in reversed order
toDigitsRev :: Integer -> [Integer]
toDigitsRev n
  | (n > 0) = (mod n 10):(toDigits (div n 10))
  | otherwise = []

