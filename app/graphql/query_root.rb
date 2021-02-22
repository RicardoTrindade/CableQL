# frozen_string_literal: true

class QueryRoot < GraphQL::Schema::Object
  graphql_name "QueryRoot"
  description "The query root of the ApiSchema."

  field :get_user, resolver: Queries::GetUser
end
