module Update where

import Graphics.Gloss.Interface.Pure.Game
import Graphics.Gloss
import Model
import Util

step :: Float -> Opt -> Opt
step dt game@(Game grid growing)
  | growing = newGame (gridSize grid + 1) True
  | otherwise = game

react :: Event -> Opt -> Opt
react (EventKey (MouseButton LeftButton) Down _ _) (Game grid growing)
  | growing = newGame (gridSize grid) False
  | otherwise = newGame (gridSize grid) True
react (EventKey (MouseButton RightButton) Down _ _) (Game grid growing) = newGame 1 False
react _ world = world
