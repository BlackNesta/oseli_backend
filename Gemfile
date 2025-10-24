source "https://rubygems.org"

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem "rails", "~> 8.0.2", ">= 8.0.2.1"
# Use postgresql as the database for Active Record
gem "pg", "~> 1.1"
# Use the Puma web server [https://github.com/puma/puma]
gem "puma", ">= 5.0"
# Build JSON APIs with ease [https://github.com/rails/jbuilder]
# gem "jbuilder"

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
# gem "bcrypt", "~> 3.1.7"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[ windows jruby ]

# Use the database-backed adapters for Rails.cache, Active Job, and Action Cable
gem "solid_cache"
gem "solid_queue"
gem "solid_cable"

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", require: false

# Deploy this application anywhere as a Docker container [https://kamal-deploy.org]
gem "kamal", require: false

# Add HTTP asset caching/compression and X-Sendfile acceleration to Puma [https://github.com/basecamp/thruster/]
gem "thruster", require: false

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
# gem "image_processing", "~> 1.2"

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin Ajax possible
gem "rack-cors"

gem "devise"
gem "devise-async"
gem "devise-jwt"
gem "jsonapi-serializer"


gem "awesome_print"

gem "sidekiq"

group :development do
  # N+1 query detection https://github.com/flyerhzm/bullet
  gem "bullet"

  # Check for vulnerable versions of gems [https://github.com/rubysec/bundler-audit#readme]
  gem "bundler-audit"

  # Ruby code quality reporter [https://github.com/whitesmith/rubycritic]
  gem "rubycritic", require: false

  # Ruby static code analyzer and formatter [https://github.com/rubocop/rubocop]
  gem "rubocop", require: false

  # Trace the routes defined in your Rails application [https://github.com/amatsuda/traceroute]
  gem "traceroute"

  # Annotate Rails classes with schema information [https://github.com/ctran/annotate_models]
  gem "annotaterb"

  # Generate Entity-Relationship Diagrams for Rails applications [https://github.com/voormedia/rails-erd]
  gem "rails-erd"

  gem "letter_opener"
end

group :development, :test do
  # Pry is a runtime developer console and IRB alternative with powerful introspection capabilities.
  gem "pry"

  # Static analysis for security vulnerabilities [https://brakemanscanner.org/]
  gem "brakeman", require: false

  # Omakase Ruby styling [https://github.com/rails/rubocop-rails-omakase/]
  gem "rubocop-rails-omakase", require: false

  # Loads environment variables from .env into ENV
  gem "dotenv"
end
