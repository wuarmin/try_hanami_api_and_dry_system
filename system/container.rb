# frozen_string_literal: true

require "dry/system/container"

class App < Dry::System::Container
  use :env, inferrer: -> { ENV.fetch("RACK_ENV", :development).to_sym }

  configure do |config|
    config.root = File.expand_path("../app", __dir__)
    config.component_dirs.add "main"
    config.component_dirs.add "lib" do |dir|
      dir.add_to_load_path = true # defaults to true
      dir.auto_register = true # defaults to true
    end
    config.bootable_dirs = ["/app/system/boot"]
  end
end
