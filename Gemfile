source 'https://rubygems.org'
ruby '2.3.1'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.0.0', '>= 5.0.0.1'
# Use mysql as the database for Active Record
gem 'mysql2', '~> 0.4.2'
# Use Puma as the app server
gem 'puma', '~> 5.6'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Apply bootstrap
gem 'bootstrap-sass'
gem 'bootswatch-rails'
gem 'font-awesome-rails'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'

# A Scope & Engine based, clean, powerful, customizable and sophisticated paginator for Ruby webapps
gem 'kaminari'

# Use friendly id
gem 'friendly_id'

# Generate sitemap
gem 'sitemap_generator'

# Manage environment specific settings
gem 'config'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
  gem 'rspec-rails', '~> 3.5'
  gem 'factory_bot_rails'
  gem 'rails-controller-testing'
  gem 'ffaker'

  gem 'pry-rails'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console'
  gem 'listen', '~> 3.0.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  # guard files
  gem 'guard'
  gem 'guard-bundler'
  gem 'guard-rspec'
  gem 'guard-rubocop'
  gem 'guard-migrate'
  # for provisioning
  gem 'capistrano'
  gem 'capistrano-rails'
  gem 'capistrano-rbenv'
  gem 'capistrano-bundler'
  gem 'capistrano3-unicorn', :git => 'git@github.com:noppefoxwolf/capistrano3-unicorn.git'
  # avoid sending every mail in dev env
  gem 'letter_opener'
end

group :production, :staging do
  gem 'unicorn'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

# for provisioning
gem 'rb-readline'

gem 'redis-rack'

# device detection
gem 'woothee'
gem 'device_detector'

# for image uploader with AWS S3
gem 'carrierwave'
gem 'fog'

# for dropzone
gem 'dropzonejs-rails'

# for image carousel
gem 'jquery-slick-rails'

# writing and deploying cron jobs
gem 'whenever', require: false
