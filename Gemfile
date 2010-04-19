source 'http://rubygems.org'

gem 'rails', '3.0.0.beta3'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

# Use native sqlite3 on Ruby 1.9 and greater
if RUBY_VERSION < "1.9"
  gem 'sqlite3-ruby', :require => 'sqlite3'
else
  gem 'sqlite3'
end

gem 'devise', :git => 'git://github.com/plataformatec/devise.git'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# Bundle the extra gems:
# gem 'bj'
# gem 'nokogiri', '1.4.1'
# gem 'sqlite3-ruby', :require => 'sqlite3'
# gem 'aws-s3', :require => 'aws/s3'

# Bundle gems for certain environments:
# gem 'rspec', :group => :test
group :test do
  gem 'rspec', :git => "git://github.com/rspec/rspec.git"
  gem 'rspec-rails', :git => "git://github.com/rspec/rspec-rails.git"
  
  gem 'database_cleaner', :git => "git://github.com/bmabey/database_cleaner.git"
  gem 'capybara', :git => "git://github.com/jnicklas/capybara.git"
  gem 'cucumber-rails', :git => "git://github.com/aslakhellesoy/cucumber-rails.git"
end
