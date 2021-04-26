#!/usr/bin/env ruby
require "fileutils"

# path to your application root.
APP_ROOT = File.expand_path("..", __dir__)

def system!(*args)
  system(*args) || abort("\n== Command #{args} failed ==")
end

FileUtils.chdir APP_ROOT do
  # This script is a way to setup or update your development environment automatically.
  # This script is idempotent, so that you can run it at anytime and get an expectable outcome.
  # Add necessary setup steps to this file.

  puts "== Installing dependencies =="
  system("bundle check") || system!("bundle install")

  # puts "\n== Migrate database =="
  system! "bundle exec rake db:migrate"

  # puts "\n== Migrate database =="
  system! "bundle exec rake db:seed"
end
