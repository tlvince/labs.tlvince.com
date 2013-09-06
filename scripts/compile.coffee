rimraf = require 'rimraf'
path = require 'path'
spawn = require('child_process').spawn

wintersmith = path.join 'node_modules', 'wintersmith'
lib = path.join wintersmith, 'lib'
src = path.join wintersmith, 'src'

rimraf lib, (error) ->
  throw error if error
  coffee = spawn 'coffee', ['-o', lib, '-b', '-c', src]
