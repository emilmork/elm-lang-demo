import Html exposing (..)
import Html.Attributes exposing (..)
import Html.App as Html
import Html.Events exposing ( onClick )

-- MAIN
main =
  Html.beginnerProgram
    { model = defaultModel
    , view = view
    , update = update
    }

defaultModel: Person
defaultModel =
  {
    name = "Emil",
    age = 27
  }

-- Model
type alias Person =
  {
    name: String,
    age: Int
  }

-- Actions
type Msg =
  IncrementAge
  | DoNothing


-- Update
update : Msg -> Person -> Person
update msg person =
  case msg of
    IncrementAge -> { person | age = (person.age + 1) }
    DoNothing -> person
    
-- VIEW
view : Person -> Html Msg
view person =
  div [ class "person" ] [
    h3 [ class "person-name"] [ text person.name],
    h3 [ class "person-age" ] [ text (toString person.age) ],
    button [
      class "person-updateAgeBtn",
      onClick IncrementAge ]
        [ text "Oppdater alder" ]
  ]
