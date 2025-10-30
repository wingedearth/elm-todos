module Types.App exposing (Model, Msg(..))

import Components.TodoInput as TodoInput
import Types.Todo exposing (Todo)


type alias Model =
    { todos : List Todo
    , inputText : String
    , nextId : Int
    }


type Msg
    = TodoInputMsg TodoInput.Msg
    | ToggleTodo Int
    | DeleteTodo Int
