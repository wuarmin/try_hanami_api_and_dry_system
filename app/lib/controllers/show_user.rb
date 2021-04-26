require "models/user"

module Controllers
  class ShowUser
    include Hanami::Action

    def call(params)
      self.format = :json

      # Question: What is the dry-system-way to inject the Models::User Class i.e. as App["user_repo"]? 
      # Should it be registered manually? The auto_register feature registers instances. 

      user = Models::User.with_pk!(params.get(:id))
      status 200, user&.to_json
    end
  end
end
