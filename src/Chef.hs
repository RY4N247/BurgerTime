module Chef where 

import Raylib.Core.Shapes
import Raylib.Types

data Chef = Chef 
  { position :: Vector2    
  , color :: Color
  , radius :: Float
  } deriving Show


drawChef :: Chef -> IO ()
drawChef (Chef position color radius) = 
    drawCircleV position radius color