module Models
  class User < Sequel::Model(App["db"][Sequel[:public][:users]])
    dataset_module do
    end
  end
end
