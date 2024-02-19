---Hola mundo

import Html exposing (div, text)

main =
  div []
    [ text "Hola Mundo!" ]


---Argumentos de linea de comando

main =
  Cmd.argv >>= \args ->
    case args of
      [arg] -> text arg
      _ -> text "No se proporcionaron argumentos"

---Standard Streams: Standard Input, Output y Error

main =
  Stdout.print "Hola Mundo!"

---Variables de ambiente
main =
  Env.get "Variable" >>= \valor ->
    text valor

---File I/O
main =
  File.read "archivo.txt" >>= \contenido ->
    text contenido

---Network I/O
main =
  Http.get "https://www.google.com" >>= \respuesta ->
    text (respuesta.body)
