Sequel.migration do
  up do
    create_table(:users) do
      primary_key :id
      String :email, unique: true
      String :first_name
      String :last_name
    end
  end

  down do
    drop_table(:users)
  end
end
