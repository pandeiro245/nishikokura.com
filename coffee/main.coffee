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
  li(null, null, () ->
    a(null, null, "Overview", {href: "#overview"})
  ) +
  li(null, null, () ->
    a(null, "active", "Japan", {href: "#history"})
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
