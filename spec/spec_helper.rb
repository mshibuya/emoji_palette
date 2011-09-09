$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'rspec'
require 'active_support'
require 'action_view'
require 'active_record'
require 'emoji_palette'

require 'cover_me'
CoverMe.config do |c|
  c.at_exit = Proc.new {}
  c.file_pattern = /#{c.project.root}\/lib\/.+\.rb/ix
end

# Requires supporting files with custom matchers and macros, etc,
# in ./support/ and its subdirectories.
Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each {|f| require f}

RSpec.configure do |config|
  
end
