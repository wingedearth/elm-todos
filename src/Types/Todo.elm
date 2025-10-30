module Types.Todo exposing (Todo, Msg(..))


type alias Todo =
    { id : Int
    , text : String
    , completed : Bool
    }


type Msg
    = ToggleTodo Int
    | DeleteTodo Int
