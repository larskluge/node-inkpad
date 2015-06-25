request = require "request"


module.exports = (id) ->

  options =
    url: "https://www.inkpad.io/#{id}"
    headers:
      "Accept": "text/html;vanilla"

  request options

