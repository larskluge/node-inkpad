request = require "request"


module.exports = (id) ->

  options =
    url: "https://www.inkpad.io/#{id}"

  if id.indexOf('.') < 0
    options.headers = "Accept": "text/html;vanilla"

  request options

