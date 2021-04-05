# frozen_string_literal: true

class BatchUserWorker
  include Sidekiq::Worker

  def perform(count)
    count.times do |i|
      sleep(3.seconds)
      user = User.create(email: "email+#{i}@mail.com")
      ApiSchema.subscriptions.trigger(:user_created, {}, { user: user })
    end
  end
end
