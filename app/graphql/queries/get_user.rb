# frozen_string_literal: true

class GetCustomer < GraphQL::Schema::Resolver
  description "Information about the Customer"

  type ::Type::Customer, null: true

  argument :id, Integer, "ID of the Customer", required: true

  def resolve(**args)
    User.find(id: args[:id])
  end
end
