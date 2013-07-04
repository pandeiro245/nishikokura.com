(function() {

  window.baseCss = function(is_ja) {
    $("#main").css("padding-top", "40px");
    $("#contents").css("line-height", "1.5");
    if (is_ja) {
      $("#contents").css("font-size", "90px");
      return $(".nav").css("margin-top", "32px");
    } else {
      $("#contents").css("font-size", "120px");
      return $(".nav").css("margin-top", "32px");
    }
  };

}).call(this);
