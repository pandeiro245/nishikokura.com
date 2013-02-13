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
  if type then "nishikokura" else "Hironobu Nishikokura"

sidebar = ul(null, "nav nav-tabs nav-stacked", () ->
  li(() ->
    a("Overview", "#overview")
  ) +
  li(() ->
    a("Japan", "#history")
  ) +
  li(
    (
      () ->
        a("Overview", "#overview")
    ),
    {"class": "active"}
  ) +
  li(() ->
    a("Overview", "#overview")
  ) +
  li(() ->
    a("Overview", "#overview")
  )
)

main = "Hi.<br /> this is<br /> #{name()}."

contents = div(null, "container", () ->
  div(null, "content", () ->
    div("main", "row", () ->
      div("sidebar", "span2 bs-docs-sidebar", sidebar) +
      div("contents", "span10", () -> main)
    )
  )
)

welcome()
