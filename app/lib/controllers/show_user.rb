require "models/user"

module Controllers
  class ShowUser
    include Hanami::Action
    include Import["repositories.user_repo"]

    def call(params)
      self.format = :json

      user = user_repo.find(params.get(:id))
      status 200, user&.to_h.to_json
    end
  end
end
