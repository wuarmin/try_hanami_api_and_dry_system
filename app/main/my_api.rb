class MyApi < Hanami::API
  get "/" do
    App["services.do_something"].call
  end

  get "/env" do
    "Current ENV is #{App.env.to_s}"
  end

  get "/user/:id" do
    # what is the dry-system-way to get the Models::User Class?

    require "models/user"
    user = Models::User.with_pk!(params[:id])
    user&.to_json
  end
end
