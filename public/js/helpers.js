(function() {
  var renderParams, tag, toJapanese;

  window.render = function(content) {
    content = toJapanese(content);
    return $("body").append(content);
  };

  toJapanese = function(content) {
    content = content.replace(/Hi\./g, "こんにちは。");
    content = content.replace(/this is/g, "僕の名前は");
    content = content.replace(/Hironobu Nishikokura/g, "西小倉宏信です");
    content = content.replace(/\./g, "。");
    return content;
  };

  window.div = function(id, cls, content) {
    if (id == null) {
      id = null;
    }
    if (cls == null) {
      cls = null;
    }
    if (content == null) {
      content = "";
    }
    return tag("div", id, cls, content);
  };

  window.ul = function(id, cls, content) {
    if (id == null) {
      id = null;
    }
    if (cls == null) {
      cls = null;
    }
    if (content == null) {
      content = "";
    }
    return tag("ul", id, cls, content);
  };

  window.li = function(id, cls, content) {
    if (id == null) {
      id = null;
    }
    if (cls == null) {
      cls = null;
    }
    if (content == null) {
      content = "";
    }
    return tag("li", id, cls, content);
  };

  window.a = function(id, cls, content, params) {
    if (id == null) {
      id = null;
    }
    if (cls == null) {
      cls = null;
    }
    if (content == null) {
      content = "";
    }
    if (params == null) {
      params = {};
    }
    return tag("a", id, cls, content, params);
  };

  renderParams = function(id, cls, params) {
    var param, res;
    if (id == null) {
      id = null;
    }
    if (cls == null) {
      cls = null;
    }
    if (params == null) {
      params = {};
    }
    res = "";
    if (id) {
      res += " id=\"" + id + "\"";
    }
    if (cls) {
      res += " class=\"" + cls + "\"";
    }
    for (param in params) {
      res += " " + param + "=\"" + params[param] + "\"";
    }
    return res;
  };

  tag = function(tagName, id, cls, content, params) {
    var p, res;
    if (id == null) {
      id = null;
    }
    if (cls == null) {
      cls = null;
    }
    if (content == null) {
      content = "";
    }
    if (params == null) {
      params = {};
    }
    res = "<" + tagName + "%p%>%c%</" + tagName + ">";
    p = renderParams(id, cls, params);
    res = res.replace(/%p%/, p);
    return res.replace(/%c%/, content);
  };

}).call(this);
