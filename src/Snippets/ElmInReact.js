// Hvordan embedde en elm applikasjon i en React komponent

const ReactApp = React.createClass({
  componentDidMount: function(props) {
     // props = { name: 'Pelle', age: 25 }
     Elm.Main.embed(this.refs.elmView, props)
  },

  render: function() {
    return <div ref='elmView' />
  }
});


// defaultPerson : Person
// defaultPerson = Person " - " 0
//
// main =
//   Html.programWithFlags
//     { init = init
//     , view = view
//     , update = update
//     , subscriptions = subscriptions
//     }
//
// init : Maybe Person -> (Person, Cmd Msg)
// init person =
//     case person of
//         Just person ->
//           ( person, Cmd.none )
//         Nothing -> ( defaultPerson, Cmd.none )
