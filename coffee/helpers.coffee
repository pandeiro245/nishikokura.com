window.render = (content) ->
  content = toJapanese(content)
  $("body").append(content)

toJapanese = (content) ->
  content = content.replace(/Hi\./g, "こんにちは。")
  content = content.replace(/this is/g, "僕の名前は")
  content = content.replace(/Hironobu Nishikokura/g, "西小倉宏信です")
  content = content.replace(/\./g, "。")
  content

window.div = (id=null, cls=null, content="", params={}) ->
  params["id"] = id if id
  params["cls"] = cls if cls
  tag("div", content, params)

window.ul = (id=null, cls=null, content="", params={}) ->
  params["id"] = id if id
  params["cls"] = cls if cls
  tag("ul", content, params)

window.li = (content="", params = {}) ->
  tag("li", content, params)

window.a = (content="", href="", params={}) ->
  params["href"] = href if href
  tag("a", content, params)

renderParams = (params={}) ->
  res = ""
  for param of params
    name = if param=="cls" then "class" else param
    res += " #{name}=\"#{params[param]}\""
  return res

tag = (tagName, content="", params={}) ->
  res = "<#{tagName}%p%>%c%</#{tagName}>"
  p = renderParams(params)
  res = res.replace(/%p%/, p)
  return res.replace(/%c%/, content)
