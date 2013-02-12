window.render = (content) ->
  content = toJapanese(content)
  $("body").append(content)

toJapanese = (content) ->
  content = content.replace(/Hi\./g, "こんにちは。")
  content = content.replace(/this is/g, "僕の名前は")
  content = content.replace(/Hironobu Nishikokura/g, "西小倉宏信です")
  content = content.replace(/\./g, "。")
  content

window.div = (id=null, cls=null, content="") ->
  tag("div", id, cls, content)

window.ul = (id=null, cls=null, content="") ->
  tag("ul", id, cls, content)

window.li = (id=null, cls=null, content="") ->
  tag("li", id, cls, content)

window.a = (id=null, cls=null, content="", params={}) ->
  tag("a", id, cls, content, params)

renderParams = (id=null, cls=null, params={}) ->
  res = ""
  res += " id=\"#{id}\"" if id
  res += " class=\"#{cls}\"" if cls
  for param of params
    res += " #{param}=\"#{params[param]}\""
  return res

tag = (tagName, id=null, cls=null, content="", params={}) ->
  res = "<#{tagName}%p%>%c%</#{tagName}>"
  p = renderParams(id, cls, params)
  res = res.replace(/%p%/, p)
  return res.replace(/%c%/, content)
