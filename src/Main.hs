module Main where

import Graphics.Gloss
import Model
import Render
import Update
import Util

title :: String
title = "Opt v0.0.1"

size :: (Int, Int)
size = (600,600)

fps :: Int
fps = 5

window :: Display
window = InWindow title size (0,0)

background :: Color
background = greyN 0.25

drawing :: Picture
drawing = circle 80

main :: IO ()
main = play window background fps (newGame 1 False) (render window) react step
