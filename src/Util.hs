module Util where

import Model

gridSize :: Num a => Grid -> a
gridSize = fromIntegral . length

newGame :: Int -> Bool -> Opt
newGame x = Game (replicate x [None])
