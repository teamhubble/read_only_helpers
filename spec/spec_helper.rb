require 'simplecov'
require 'active_record'
SimpleCov.start

require 'read_only_helpers'
RSpec.configure do |config|
  config.order = :random
end
