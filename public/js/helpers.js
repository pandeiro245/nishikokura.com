(function() {
  var renderParams;

  window.render = function(content) {
    return $("body").append(content);
  };

  window.div = function(id, cls, content) {
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
    res = '<div%p%>%c%</div>';
    p = renderParams(id, cls);
    res = res.replace(/%p%/, p);
    res = res.replace(/%c%/, content);
    return res;
  };

  renderParams = function(id, cls) {
    var res;
    if (id == null) {
      id = null;
    }
    if (cls == null) {
      cls = null;
    }
    res = "";
    if (id) {
      res += " id=\"" + id + "\"";
    }
    if (cls) {
      res += " class=\"" + cls + "\"";
    }
    return res;
  };

}).call(this);
