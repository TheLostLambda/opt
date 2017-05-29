module Render where

import Graphics.Gloss
import Model
import Util

-- A couple of render constants
padding = 3
tileColor = greyN 0.7

render :: Display -> Opt -> Picture
render (InWindow _ (winX, _) _) (Game grid _) = Pictures $ map (uncurry square) tg
  where win = fromIntegral winX
        ts = (win - padding * (gridSize grid + 1)) / (gridSize grid)
        square x y = Translate x y $ Color tileColor $ rectangleSolid ts ts
        tg = [(x - win / 2, y - win / 2) | c <- [1..gridSize grid], r <- [1..gridSize grid]
                                         , let x = (c - 0.5) * ts + padding * c
                                         , let y = (r - 0.5) * ts + padding * r ]
