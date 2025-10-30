module Utils.Msg exposing (convertTodoItemMsg)

import Types.App exposing (Msg(..))
import Types.Todo


convertTodoItemMsg : Types.Todo.Msg -> Msg
convertTodoItemMsg itemMsg =
    case itemMsg of
        Types.Todo.ToggleTodo id ->
            ToggleTodo id

        Types.Todo.DeleteTodo id ->
            DeleteTodo id
