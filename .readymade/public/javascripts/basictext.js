// Generated by CoffeeScript 1.3.0
(function() {
  var BasicText;

  BasicText = (function() {

    BasicText.name = 'BasicText';

    function BasicText() {}

    BasicText.prototype.data = function(data, elem) {
      return elem.append($("<p class='text'>" + data.content + "</p>"));
    };

    BasicText.prototype.handles = ["text"];

    BasicText.prototype.name = "basictext";

    return BasicText;

  })();

  window.handlerTypes.push(BasicText);

}).call(this);
