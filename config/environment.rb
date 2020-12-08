require 'pry' 

require_relative '../lib/concerns/findable'   # this collects all the module files
require_relative '../lib/concerns/memorable'  # which allows require_relative 'path to this file'
require_relative '../lib/concerns/paramable'  # to grant access to all modules

require_relative '../lib/artist.rb'           # this file sent to rspec helper for testing
require_relative '../lib/song.rb'             # may not need to have these files if you are granting access to
                                              # the module files into your class files. May just put
                                              # require_relative 'path to this file' in each class file