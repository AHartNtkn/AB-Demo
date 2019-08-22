port module GoogleAnalytics exposing (..)

type alias GoogleAnalyticsMessage =
  { msg : String
  , value : String
  }

send : String -> String -> Cmd.Cmd msg
send msg value =
  let data = GoogleAnalyticsMessage msg value
  in googleAnalytics data

port googleAnalytics : GoogleAnalyticsMessage -> Cmd msg