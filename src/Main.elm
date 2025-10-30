module Main exposing (..)

import Browser
import Components.Header
import Components.TodoInput
import Components.TodoList
import Html exposing (Html, div)
import Styles.MainStyles exposing (containerStyles)
import Types.App exposing (Model, Msg(..))
import Utils.Msg exposing (convertTodoItemMsg)
import Utils.Update exposing (update)


main : Program () Model Msg
main =
    Browser.sandbox { init = init, update = update, view = view }


init : Model
init =
    { todos = []
    , inputText = ""
    , nextId = 1
    }


view : Model -> Html Msg
view model =
    div
        containerStyles
        [ Components.Header.view "My Todos"
        , Components.TodoInput.view TodoInputMsg model.inputText
        , Components.TodoList.view convertTodoItemMsg model.todos
        ]
