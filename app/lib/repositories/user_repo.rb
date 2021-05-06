# frozen_string_literal: true

module Repositories
  class UserRepo < ROM::Repository[:users]
    include Import["orm.container"]

    def find(id)
      users.by_pk(id).one
    end
  end
end
