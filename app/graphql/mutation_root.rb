# frozen_string_literal: true

class MutationRoot < GraphQL::Schema::Object
  graphql_name "MutationRoot"
  description "The mutation root of the ApiSchema."

  field :create_batch_user, mutation: Mutations::CreateBatchUser
end
