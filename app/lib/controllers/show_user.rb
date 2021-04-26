require "models/user"

module Controllers
  class ShowUser
    include Hanami::Action

    def call(params)
      self.format = :json

      # Question: what is the dry-system-way to get the Models::User Class?

      user = Models::User.with_pk!(params.get(:id))
      status 200, user&.to_json
    end
  end
end
