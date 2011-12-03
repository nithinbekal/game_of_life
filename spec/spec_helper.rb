
$LOAD_PATH.push File.expand_path('..', 'lib')

require 'rspec'
require 'game_of_life'

RSpec.configure do |config|
  config.color_enabled = true
  config.formatter = 'documentation'
end