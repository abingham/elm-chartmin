module ChartMin.Line
  (Dataset, defaultDataset, createDataset
  , Data, defaultData
  , chart
  )where

import Native.ChartMin

type alias Dataset =
  { label : String
  , fillColor : String -- TODO: Color object
  , strokeColor : String -- TODO: Color object
  , pointColor : String -- TODO: Color object
  , pointStrokeColor : String -- TODO: Color object
  , pointHighlightFill : String -- TODO: Color object
  , pointHighlightStroke : String -- TODO: Color object
  , data : List Int
  }

type alias Data =
  { labels : List String
  , datasets : List Dataset
  }

defaultDataset : Dataset
defaultDataset =
  { label = "UNNAMED"
  , fillColor = "rgba(220,220,220,0.2)"
  , strokeColor = "rgba(220,220,220,1)"
  , pointColor = "rgba(220,220,220,1)"
  , pointStrokeColor = "#fff"
  , pointHighlightFill = "#fff"
  , pointHighlightStroke = "rgba(220,220,220,1)"
  , data = []
  }

createDataset : String -> List Int -> Dataset
createDataset label data =
  { defaultDataset
    | label = label
    , data = data
  }

defaultData : Data
defaultData =
  { labels = []
  , datasets = []
  }
