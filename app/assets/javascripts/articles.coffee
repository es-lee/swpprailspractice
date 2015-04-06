$ ->
  $("#count_link").click ->
    $.ajax
      type: "post"
      url: "/articles/count"
      dataType: "json"
      success: (data, status) ->
        $("#count_result").text(data["count"]+"object(s)!")
