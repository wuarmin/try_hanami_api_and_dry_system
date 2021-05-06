App.boot(:orm) do
  start do
    use :dependencies, :settings

    configuration = ROM::Configuration.new(:sql, App[:settings].database_url)
    configuration.auto_registration("#{App.root}/lib/orm/")
    configuration.gateways[:default].use_logger(Logger.new($stdout))

    register("orm.container", ROM.container(configuration))
  end
end
