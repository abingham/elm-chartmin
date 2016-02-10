module ChartMin.GlobalConfig
  (GlobalConfig, defaultGlobalConfig
  ) where

type alias GlobalConfig =
  { animation : Bool
  , animationSteps : Int
  , animationEasing : String -- TODO: Create enum for this
  , showScale : Bool
  , scaleOverride : Bool
  , scaleSteps : Maybe Int
  , scaleStepWidth : Maybe Int
  , scaleStartValue : Maybe Int
  , scaleLineColor : String -- TODO: This should be a color objects
  , scaleLineWidth : Int
  , scaleShowLabels : Bool
  , scaleLabel : String
  , scaleIntegersOnly : Bool
  , scaleBeginAtZero : Bool
  , scaleFontFamily : String -- TODO: List? Not  clear...
  , scaleFontSize : Int
  , scaleFontStyle : String
  , scaleFontColor : String -- TODO: Color objects
  , responsive : Bool
  , maintainAspectRation : Bool
  , showTooltips : Bool
  , customTooltips : Bool
  , tooltipEvents : List String
  , tooltipFillColor : String -- TODO: Color object
  , tooltipFontFamily : String -- TODO: List?
  , tooltipFontSize : Int
  , tooltipFontStyle : String
  , tooltipFontColor : String -- TODO: Color objects
  , tooltipTitleFontFamily : String -- TODO: List?
  , tooltipTitleFontSize : Int
  , tooltipTitleFontStyle : String
  , tooltipTitleFontColor : String -- TODO: Color object
  , tooltipYPadding : Int
  , tooltipXPadding : Int
  , tooltipCaretSize : Int
  , tooltipCornerRadius : Int
  , tooltipXOffset : Int
  , tooltipTemplate : String
  , multiTooltipTemplate : String
  -- TODO: onAnimationProgress
  -- TODO: onAnimationComplete
  }

defaultGlobalConfig : GlobalConfig
defaultGlobalConfig =
  { animation = True
  , animationSteps = 60
  , animationEasing = "eastOutQuart"
  , showScale = True
  , scaleOverride = False
  , scaleSteps = Nothing
  , scaleStepWidth = Nothing
  , scaleStartValue = Nothing
  , scaleLineColor = "rgba(0, 0, 0, .1)"
  , scaleLineWidth = 1
  , scaleShowLabels = True
  , scaleLabel = "<%=value>"
  , scaleIntegersOnly = True
  , scaleBeginAtZero = False
  , scaleFontFamily = "'Helvetica Neue', 'Helvetica', 'Arial', sans-serif"
  , scaleFontSize = 12
  , scaleFontStyle = "normal"
  , scaleFontColor = "#666"
  , responsive = False
  , maintainAspectRation = True
  , showTooltips = True
  , customTooltips = False
  , tooltipEvents = ["mousemove", "touchstart", "touchmove"]
  , tooltipFillColor = "rgba(0, 0, 0, 0.8)"
  , tooltipFontFamily = "'Helvetica Neue', 'Helvetica', 'Arial', sans-serif"
  , tooltipFontSize = 14
  , tooltipFontStyle = "normal"
  , tooltipFontColor = "#fff"
  , tooltipTitleFontFamily = "'Helvetica Neue', 'Helvetica', 'Arial', sans-serif"
  , tooltipTitleFontSize = 14
  , tooltipTitleFontStyle = "bold"
  , tooltipTitleFontColor = "#fff"
  , tooltipYPadding = 6
  , tooltipXPadding = 6
  , tooltipCaretSize = 8
  , tooltipCornerRadius = 6
  , tooltipXOffset = 10
  , tooltipTemplate = "<%if (label){%><%=label%>: <%}%><%= value %>"
  , multiTooltipTemplate = "<%= value %>"
  -- TODO: onAnimationProgress
  -- TODO: onAnimationComplete
  }
