class MyApi < Hanami::API
  get "/" do
    App["services.do_something"].call
  end

  get "/env", to: App["controllers.env"]
  get "/user/:id", to: App["controllers.show_user"]
end
