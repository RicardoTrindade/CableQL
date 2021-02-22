# frozen_string_literal: true

class MutationRoot < GraphQL::Schema::Object
  graphql_name "MutationRoot"
  description "The query root of the ApiSchema."
end
