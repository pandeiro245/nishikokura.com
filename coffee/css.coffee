window.baseCss = (is_ja) ->
  $("#main").css("padding-top", "40px")
  $("#contents").css("line-height", "1.5")
  if is_ja
    $("#contents").css("font-size", "90px")
    $(".nav").css("margin-top", "32px")
  else
    $("#contents").css("font-size", "120px")
    $(".nav").css("margin-top", "32px")

