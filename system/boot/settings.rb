require "dry/system/components"

module Types
  include Dry.Types()
end

App.boot(:settings, from: :system) do
  settings do
    key :database_url, Types::String.constrained(filled: true)
  end
end
