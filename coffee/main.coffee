welcome = () ->
  render(
    header + contents
  )

header = div(null, "navbar navbar-fixed-top", () ->
  div(null, "navbar-inner", () ->
    div(null, "container", () ->
      ""
    )
  )
)

name = (type=null) ->
  if type then "nishikokura" else "pandeiro245"

contents = div(null, "container", () ->
  div(null, "content", () ->
    div(null, "row", () ->
      div("main", "row", () ->
        div("left", "span4", "あああ") +
        div("right", "span8", () ->
          "hi this is #{name()}"
        )
      )
    )
  )
)
welcome()
