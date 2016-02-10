module ChartMin where

import Html exposing (canvas)
import Html.Attributes as Attrs

chart : String -> Int -> Int -> Html
chart id h w =
  -- TODO: This probably needs to be rewritten using native stuff like elm-chartjs.
  canvas [ Attrs.id id, Attrs.width w, Attrs.height h ] []
