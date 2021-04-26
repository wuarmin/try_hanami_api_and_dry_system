App.boot(:dependencies) do
  init do
    puts "Bundler.require env: #{App.env}"
    Bundler.require(:default, App.env)
  end
end
