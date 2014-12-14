module FibonacciBars where


import Color (..)
import Fibonacci (fibonacci, fibonacciWithIndexes)
import Graphics.Collage (..)
import Graphics.Element (..)
import List
import Text (asText)

color n =
  let colors = [ red, orange, yellow, green, blue, purple, brown ]
  in
  List.drop (n % (List.length colors)) colors |> List.head


bar (index, n) =
    flow right [
    collage (n*20) 20 [ filled (color index) (rect (toFloat n * 20) 20) ],
    asText n
    ]

    
main = flow down <| List.map bar (fibonacciWithIndexes 10)
