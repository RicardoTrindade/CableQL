# frozen_string_literal: true

module Mutations
  class CreateBatchUser < GraphQL::Schema::Resolver
    description "Creates 10 users in a background job"

    type Boolean, null: false

    def resolve(**args)
      BatchUserWorker.perform_async(10)
      true
    end
  end
end
