class BasicText
  data: (data, elem) ->
    elem.append $("<p class='text'>#{data.content}</p>")
  handles: ["text"]
  name: "basictext"

window.handlerTypes.push BasicText
