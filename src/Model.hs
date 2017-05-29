module Model where

data Opt = Game { grid :: Grid
                , growing :: Bool }

type Grid = [[Tile]]

data Tile = None | Mirror Int | Source | Goal | Block
