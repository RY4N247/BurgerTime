module Main where

import Chef

import Control.Monad
import Raylib.Core
import Raylib.Util.Colors (black, lightGray, orange, white)
import Raylib.Types

main :: IO ()
main = do 

    -- Initialisations 
    let screenWidth = 1024
        screenHeight = 896

    initWindow screenWidth screenHeight "Burger Time"
    setTargetFPS 60

  
    let player1 = Chef (Vector2 512 448) lightGray 32

    --Game Loop
    forever (do
        beginDrawing
        clearBackground black
        drawChef player1
        
        endDrawing)



    

    