welcome = () ->
  render(
    header + contents
  )

header = div(null, "navbar navbar-fixed-top",
  div(null, "navbar-inner", div(null, "container"))
)

sidebar = div("sidebar", "span2 bs-docs-sidebar",
  ul(null, "nav nav-tabs nav-stacked",
    (li(a("_#{page}", "##{page}")) for page of pages).join("")
  )
)

contents = div(null, "container",
  div(null, "content",
    div("main", "row",
      sidebar +
      div("contents", "span10", "_mindia inc.")
    )
  )
)

welcome()
