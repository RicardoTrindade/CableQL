# frozen_string_literal: true

class Subscriptions::UserCreated < GraphQL::Schema::Subscription

  field :user, Types::User, null: true

  def subscribe(**args)
    puts args
    super
  end

  def update
    super
  end
end
