App.boot(:persistence) do
  start do
    use :dependencies, :settings
    Sequel::Model.plugin :json_serializer
    register("db", Sequel.connect(App[:settings].database_url, :loggers => [Logger.new($stdout)]))
  end
end
