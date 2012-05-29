source 'http://rubygems.org'

gem 'rails', '3.1.3'

# Bundle edge Rails instead:
# gem 'rails',     :git => 'git://github.com/rails/rails.git'

gem 'sqlite3'
gem 'mysql2'
gem 'jquery-rails'
gem "devise"
gem 'sass-rails','3.1.5'
gem 'rails_admin', :git => 'git://github.com/sferik/rails_admin.git'
gem "github_api"
gem 'kaminari'
gem 'newrelic_rpm'

# Deploy with Capistrano
 gem 'capistrano'

group :production do
  gem 'therubyracer'
end

group :development do
  gem 'pry-rails'
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
#  gem 'bootstrap-sass'
  gem 'sass-rails',   '3.1.5'
  gem 'coffee-rails', '~> 3.1.1'
  gem 'uglifier', '>= 1.0.3'
end


group :development, :test do
  gem 'rspec-rails'
  gem 'capybara'
end


# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the web server
# gem 'unicorn'



# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'

group :test do
  # Pretty printed test output
  gem 'turn', '~> 0.8.3', :require => false
end
