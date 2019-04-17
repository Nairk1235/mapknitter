ENV["RAILS_ENV"] = "test"

require 'simplecov'

if ENV['CI'] == 'true'
  require 'simplecov-json'
  SimpleCov.formatter = SimpleCov::Formatter::JSONFormatter
else
  SimpleCov.formatter = SimpleCov::Formatter::HTMLFormatter
end

SimpleCov.start 'rails' do
  add_filter '/test/'
end

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
