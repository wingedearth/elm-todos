module Main exposing (..)

import Browser
import Html exposing (Html, div, h1, text)
import Html.Attributes exposing (style)


-- MAIN

main =
    Browser.sandbox { init = init, update = update, view = view }


-- MODEL

type alias Model =
    {}


init : Model
init =
    {}


-- UPDATE

type Msg
    = NoOp


update : Msg -> Model -> Model
update msg model =
    case msg of
        NoOp ->
            model


-- VIEW

view : Model -> Html Msg
view model =
    div
        [ style "text-align" "center"
        , style "padding" "50px"
        , style "font-family" "Arial, sans-serif"
        ]
        [ h1
            [ style "color" "#333"
            , style "font-size" "3em"
            ]
            [ text "Hello, World!" ]
        ]