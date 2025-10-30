module Components.Header exposing (view)

import Html exposing (Html, h1, text)
import Styles.HeaderStyles exposing (headerStyles)


view : String -> Html msg
view title =
    h1
        headerStyles
        [ text title ]
