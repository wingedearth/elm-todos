module Components.TodoList exposing (view)

import Components.TodoItem exposing (viewTodo)
import Html exposing (Html, ul)
import Styles.MainStyles exposing (listStyles)
import Types.Todo exposing (Msg, Todo)


view : (Msg -> msg) -> List Todo -> Html msg
view convertMsg todos =
    ul listStyles (List.map (viewTodo convertMsg) todos)
