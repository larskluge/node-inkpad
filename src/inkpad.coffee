request = require "request"


module.exports = (id) ->

  url = "http://www.inkpad.io/#{id}"

  request(url)

