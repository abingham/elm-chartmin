module Main (..) where

import ChartMin
import Html exposing (Html)


main : Html
main =
  ChartMin.chart "foobar" 400 400
