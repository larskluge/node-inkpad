program = require "commander"
version = require("../package.json").version
inkpad = require "./inkpad"


module.exports.run = ->

  program
    .version version
    .usage "[options] <inkpad id>"
    .option "-n, --new", "Create a new Inkpad"
    .parse process.argv

  if !program.new and !program.args.length
    program.help()
  else
    if program.new
      require("open")("http://www.inkpad.io/pads/new")
    else
      id = process.argv[2]
      inkpad(id).pipe(process.stdout)

