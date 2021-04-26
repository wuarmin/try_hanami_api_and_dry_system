require "bundler/setup"

namespace :db do
  require "sequel"
  require "sequel/extensions/seed"
  require_relative "system/container"

  App.start(:persistence)

  Sequel.extension :migration
  Sequel.extension :seed

  desc "Perform database migration"
  task :migrate do
    version = Sequel::Migrator.run(App["db"], "db/migrations", table: Sequel[:public][:_schema_info])
    puts "<= sq:migration:to version=[#{version}] executed"
  end

  desc "Perform migration reset (migrate down to version 0 and up to latest)"
  task :reset do
    Sequel::Migrator.run(App["db"], "db/migrations", :target => 0, table: Sequel[:public][:_schema_info])
    Sequel::Migrator.run(App["db"], "db/migrations", table: Sequel[:public][:_schema_info])
    puts "<= sq:migrate:reset executed"
  end

  desc "Seed the tables"
  task :seed do
    Sequel::Seed.setup(:development)
    Sequel::Seeder.apply(App["db"], "db/seeds", table: Sequel[:public][:_schema_seeds])
    puts "<= sq:Seed executed"
  end
end
