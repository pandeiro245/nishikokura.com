window.render = (content) ->
  $("body").append(content)

window.div = (id=null, cls=null, content="") ->
  res = '<div%p%>%c%</div>'
  p = renderParams(id, cls)
  res = res.replace(/%p%/, p)
  res = res.replace(/%c%/, content)
  return res

renderParams = (id=null, cls=null) ->
  res = ""
  res += " id=\"#{id}\"" if id
  res += " class=\"#{cls}\"" if cls
  return res
