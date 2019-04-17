ENV["RAILS_ENV"] = "test"

require 'simplecov'
SimpleCov.start 'rails' do
  add_filter '/test/'
end

#if ENV['CI'] == 'true'
  require 'codecov'
  SimpleCov.formatter = SimpleCov::Formatter::Codecov
#else
  #SimpleCov.formatter = SimpleCov::Formatter::HTMLFormatter
#end

require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.(yml|csv) for all tests in alphabetical order.
  #
  # Note: You'll currently still have to declare fixtures explicitly in integration tests
  # -- they do not yet inherit this setting
  fixtures :all

  # Add more helper methods to be used by all tests here...
end
