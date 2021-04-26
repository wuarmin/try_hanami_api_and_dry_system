module Controllers
  class Env
    include Hanami::Action

    def call(params)
      self.format = :json
      status 200, { env: App.env }.to_json
    end
  end
end
