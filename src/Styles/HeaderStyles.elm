module Styles.HeaderStyles exposing (headerStyles)

import Html exposing (Attribute)
import Html.Attributes exposing (style)


headerStyles : List (Attribute msg)
headerStyles =
    [ style "color" "#333"
    , style "font-size" "3em"
    ]
