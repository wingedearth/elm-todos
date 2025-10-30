module Utils.Update exposing (update)

import Components.TodoInput as TodoInput
import Types.App exposing (Model, Msg(..))


update : Msg -> Model -> Model
update msg model =
    case msg of
        TodoInputMsg inputMsg ->
            case inputMsg of
                TodoInput.UpdateInput text ->
                    { model | inputText = text }

                TodoInput.AddTodo ->
                    if String.isEmpty (String.trim model.inputText) then
                        model

                    else
                        { model
                            | todos =
                                model.todos
                                    ++ [ { id = model.nextId
                                         , text = model.inputText
                                         , completed = False
                                         }
                                       ]
                            , inputText = ""
                            , nextId = model.nextId + 1
                        }

        ToggleTodo id ->
            { model
                | todos =
                    List.map
                        (\todo ->
                            if todo.id == id then
                                { todo | completed = not todo.completed }

                            else
                                todo
                        )
                        model.todos
            }

        DeleteTodo id ->
            { model | todos = List.filter (\todo -> todo.id /= id) model.todos }
