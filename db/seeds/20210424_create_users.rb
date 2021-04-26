Sequel.seed(:development, :test) do
  def run
    [
      ["email1@test.com", "Chuck", "Norris"],
      ["email2@test.com", "Michael", "Knight"],
      ["email3@test.com", "David", "Hasselhoff"],
    ].each do |email, first_name, last_name|
      App[:db][:users].insert(email: email, first_name: first_name, last_name: last_name)
    end
  end
end
