import Color (..)
import Graphics.Element (..)
import Text

main : Element
main =
    Text.fromString "Hello World"
    |> Text.color blue
    |> Text.italic
    |> Text.bold
    |> Text.height 60
    |> Text.leftAligned
