module Types
  class User < GraphQL::Schema::Object

    graphql_name "User"
    description "Customer related information"

    field :id, Int, "id", null: false
  end
end
