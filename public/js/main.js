(function() {
  var contents, header, main, name, sidebar, welcome;

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
      return "Hironobu Nishikokura";
    }
  };

  sidebar = ul(null, "nav nav-tabs nav-stacked", function() {
    return li(null, null, function() {
      return a(null, null, "Overview", {
        href: "#overview"
      });
    }) + li(null, null, function() {
      return a(null, "active", "Japan", {
        href: "#history"
      });
    });
  });

  main = "Hi.<br /> this is<br /> " + (name()) + ".";

  contents = div(null, "container", function() {
    return div(null, "content", function() {
      return div("main", "row", function() {
        return div("sidebar", "span2 bs-docs-sidebar", sidebar) + div("contents", "span10", function() {
          return main;
        });
      });
    });
  });

  welcome();

}).call(this);
