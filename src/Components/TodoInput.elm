module Components.TodoInput exposing (Msg(..), view)

import Html exposing (Html, button, div, input, text)
import Html.Attributes exposing (placeholder, type_, value)
import Html.Events exposing (onClick, onInput)
import Styles.MainStyles exposing (inputContainerStyles, inputStyles, buttonStyles)


type Msg
    = UpdateInput String
    | AddTodo


view : (Msg -> msg) -> String -> Html msg
view toMsg inputText =
    div inputContainerStyles
        [ input
            ([ type_ "text"
            , placeholder "What needs to be done?"
            , value inputText
            , onInput (toMsg << UpdateInput)
            ]
            ++ inputStyles)
            []
        , button
            (onClick (toMsg AddTodo) :: buttonStyles)
            [ text "Add" ]
        ]
