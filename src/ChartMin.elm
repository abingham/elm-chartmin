module ChartMin (..) where

{-| Chart.js interface

# Definition
@docs chart

-}

import Html exposing (canvas)
import Html.Attributes as Attrs

{-|
 -}
chart : String -> Int -> Int -> Html.Html
chart id h w =
  -- TODO: This probably needs to be rewritten using native stuff like elm-chartjs.
  canvas [ Attrs.id id, Attrs.width w, Attrs.height h ] []
