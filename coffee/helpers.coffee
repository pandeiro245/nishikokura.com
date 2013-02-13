window.is_ja = true

window.render = (content) ->
  content = toJapanese(content)
  $("body").append(content)
  baseCss(is_ja)

toJapanese = (content) ->
  (content
    .replace(/_mindia inc\./g, "株式会社マインディア")
    .replace(/_home/g, "トップ")
    .replace(/_vision/g, "理念")
    .replace(/_products/g, "商品")
    .replace(/_members/g, "仲間")
    .replace(/_wanted/g, "採用")
    .replace(/_thanks/g, "感謝")
  )

window.div = (id=null, cls=null, content="", params={}) ->
  tag("div", content, optParams(params, id, cls))

window.ul = (id=null, cls=null, content="", params={}) ->
  tag("ul", content, optParams(params, id, cls))

window.li = (content="", params = {}) ->
  tag("li", content, params)

window.a = (content="", href="", params={}) ->
  tag("a", content, optParams(params, {href: href}))

renderParams = (params={}) ->
  (for param of params
    name = if param=="cls" then "class" else param
    " #{name}=\"#{params[param]}\""
  )

tag = (tagName, content="", params={}) ->
  ("<#{tagName}%p%>%c%</#{tagName}>"
    .replace(/%p%/, renderParams(params))
    .replace(/%c%/, content)
  )

optParams = (params, id, cls, href) ->
  params["id"] = id if id
  params["cls"] = cls if cls
  params["href"] = id["href"] if id and id["href"]
  params
