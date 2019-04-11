import Debug 
import Html exposing (text, div)

type Option a
  = Some a
  | None

type alias Name = Option String

printName : Name -> String
printName name
  = case name of 
      Some s -> s
      None -> "No Name"

main =
  div [] 
    [ text (printName (Some "Ben"))
    , text (printName None)
    ]
