
source 'https://rubygems.org'

ruby '3.3.5'

gem 'rails', '~> 7.1.0'
gem 'puma', '~> 6.0'
gem 'webrick', platforms: [:mri, :mingw, :x64_mingw]
gem 'os' # for ostruct
gem 'ostruct'

gem 'pry'
gem 'pry-nav'

# Use sqlite3 as the database for Active Record
gem 'sqlite3', '~> 1.4'
# Use SCSS for stylesheets (use sassc-rails for Rails 7+ if needed)
# gem 'sassc-rails'
# Use CoffeeScript for .coffee assets and views (optional, not recommended for new apps)
# gem 'coffee-rails'
gem 'bootsnap', require: false
gem 'jquery-rails'
gem 'turbolinks', '~> 5.2'

# Use doc generator
group :doc do
  gem 'sdoc', '~> 0.4.0'
end

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development


group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  gem 'rspec-rails', '~> 6.0'
  gem 'capybara'
  gem 'faker'
  gem 'rails-controller-testing'
end


group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end
