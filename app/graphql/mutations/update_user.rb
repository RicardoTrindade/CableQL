# frozen_string_literal: true

module Mutations
  class UpdateUser < GraphQL::Schema::Resolver
    description "Information about the Customer"

    type Types::User, null: true

    def resolve(**args)
      User.last.update(email: "update@email.com")
      User.last
    end
  end
end
