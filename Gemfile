source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.3'
gem 'bcrypt'
gem 'bootsnap', '>= 1.1.0', require: false
gem 'faraday'
gem 'figaro'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 3.11'
gem 'rails', '~> 5.2.4', '>= 5.2.4.5'
gem 'rspec-rails'
gem 'rubocop'


group :development, :test do
  gem 'capybara'
  gem 'factory_bot_rails'
  gem 'faker'
  gem 'fast_jsonapi'
  gem 'orderly'
  gem 'pry'
  gem 'shoulda-matchers'
  gem 'simplecov'
  gem 'travis'
end


group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'rspec-rails'
  gem 'launchy'
  gem 'vcr'
  gem 'webmock'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
