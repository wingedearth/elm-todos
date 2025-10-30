module Styles.MainStyles exposing (containerStyles, inputContainerStyles, inputStyles, buttonStyles, listStyles)

import Html exposing (Attribute)
import Html.Attributes exposing (style)


containerStyles : List (Attribute msg)
containerStyles =
    [ style "max-width" "600px"
    , style "margin" "0 auto"
    , style "padding" "50px 20px"
    , style "font-family" "Arial, sans-serif"
    ]


inputContainerStyles : List (Attribute msg)
inputContainerStyles =
    [ style "margin" "20px 0" ]


inputStyles : List (Attribute msg)
inputStyles =
    [ style "padding" "10px"
    , style "width" "70%"
    , style "font-size" "16px"
    ]


buttonStyles : List (Attribute msg)
buttonStyles =
    [ style "padding" "10px 20px"
    , style "margin-left" "10px"
    , style "font-size" "16px"
    , style "cursor" "pointer"
    ]


listStyles : List (Attribute msg)
listStyles =
    [ style "list-style" "none"
    , style "padding" "0"
    ]
