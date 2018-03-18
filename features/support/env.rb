require 'coveralls'
Coveralls.wear_merged!('rails')

require 'cucumber/rails'

World(FactoryBot::Syntax::Methods)

ActionController::Base.allow_rescue = false

begin
  DatabaseCleaner.clean_with :truncation
rescue NameError
  raise "You need to add database_cleaner to your Gemfile (in the :test group) if you wish to use it."
end

Cucumber::Rails::Database.javascript_strategy = :truncation
