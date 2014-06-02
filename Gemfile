source 'https://rubygems.org'

gem 'spree', '~>2.2.2'

# Provides basic authentication functionality for testing parts of your engine
gem 'spree_auth_devise', github: 'spree/spree_auth_devise', :branch => '2-2-stable'

group :test do
  gem 'therubyracer', :platforms => :ruby
  gem 'capybara', '>2.2'
  gem 'capybara-screenshot', :require => false
  gem 'rspec-rails', '~> 2.14.2'
  gem 'selenium-webdriver'
  gem 'factory_girl_rails', '~> 4.2'
end

gemspec
