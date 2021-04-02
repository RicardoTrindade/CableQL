# frozen_string_literal: true

class HardWorker
  include Sidekiq::Worker

  def perform(name, count)
    count.times do
      user = User.create(email: name)
      ApiSchema.subscriptions.trigger(:user_created, {}, { user: user })
    end
  end
end
