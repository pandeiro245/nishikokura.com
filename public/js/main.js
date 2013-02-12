(function() {
  var contents, header, name, welcome;

  welcome = function() {
    return render(header + contents);
  };

  header = div(null, "navbar navbar-fixed-top", function() {
    return div(null, "navbar-inner", function() {
      return div(null, "container", function() {
        return "";
      });
    });
  });

  name = function(type) {
    if (type == null) {
      type = null;
    }
    if (type) {
      return "nishikokura";
    } else {
      return "pandeiro245";
    }
  };

  contents = div("main", "row", function() {
    return div("left", "span4", "あああ") + div("right", "span8", function() {
      return "hi this is " + (name());
    });
  });

  welcome();

}).call(this);
