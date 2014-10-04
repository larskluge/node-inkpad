Promise = require "bluebird"
request = Promise.promisifyAll(require "request")

module.exports.run = ->

  id = process.argv[2]
  url = "http://www.inkpad.io/#{id}"

  request.getAsync(url)
    .spread (resp, body) ->
      body
    .then console.log

