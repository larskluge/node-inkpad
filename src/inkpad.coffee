request = require "request"


module.exports = (id) ->

  url = "https://www.inkpad.io/#{id}"

  request(url)

