require 'rails_helper'
require 'rspec-rails'

DatabaseCleaner.strategy = :truncation

Rspec.configure do |config|
  config.include ApiHelper, type: :api 
  congig.include Requests::JsonHelpers, type: :api 

end