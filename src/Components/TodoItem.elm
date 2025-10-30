module Components.TodoItem exposing (viewTodo)

import Html exposing (Html, button, div, input, li, text)
import Html.Attributes exposing (checked, style, type_)
import Html.Events exposing (onClick)
import Types.Todo exposing (Msg(..), Todo)


viewTodo : (Msg -> msg) -> Todo -> Html msg
viewTodo toMsg todo =
    li
        [ style "display" "flex"
        , style "align-items" "center"
        , style "padding" "10px"
        , style "margin" "5px 0"
        , style "background-color" "#f5f5f5"
        , style "border-radius" "5px"
        ]
        [ input
            [ type_ "checkbox"
            , checked todo.completed
            , onClick (toMsg (ToggleTodo todo.id))
            , style "margin-right" "10px"
            , style "cursor" "pointer"
            ]
            []
        , div
            [ style "flex" "1"
            , style "text-decoration"
                (if todo.completed then
                    "line-through"

                 else
                    "none"
                )
            , style "color"
                (if todo.completed then
                    "#888"

                 else
                    "#000"
                )
            ]
            [ text todo.text ]
        , button
            [ onClick (toMsg (DeleteTodo todo.id))
            , style "padding" "5px 10px"
            , style "background-color" "#ff4444"
            , style "color" "white"
            , style "border" "none"
            , style "border-radius" "3px"
            , style "cursor" "pointer"
            ]
            [ text "Delete" ]
        ]
