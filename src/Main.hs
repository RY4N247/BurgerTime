module Main where

import Control.Monad
import Raylib.Core
import Raylib.Util.Colors (black, lightGray, orange, white)

main :: IO ()
main = do 
    let screenWidth = 800
        screenHeight = 450
    --print(screenHeight, screenWidth)

    initWindow screenWidth screenHeight "Burger Time"
    setTargetFPS 60

    --Game Loop
    forever $ do
        beginDrawing
        clearBackground black
        
        endDrawing



    

    