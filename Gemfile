source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


gem 'nprogress-rails'
gem 'prawn'
gem 'simple_form'
gem 'bootstrap-sass'
gem 'devise'
gem 'cocoon'
gem 'rails', '~> 5.0.3'
# gem 'mysql2', '0.3.21'
gem 'puma', '~> 4.3'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'jquery-rails'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'roadie', '~> 3.2'

gem 'passenger'
gem 'therubyracer',  platforms: :ruby

group :development, :test do
  gem 'byebug', platform: :mri
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem "letter_opener"
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
# gem 'nprogress-rails', platforms:[:mingw, :mswin, :x64_mingw, :jruby, :x86_mingw32]
gem 'mysql2', '0.3.21'
