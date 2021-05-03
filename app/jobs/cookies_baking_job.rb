class CookiesBakingJob < ApplicationJob
  queue_as :default

  def perform(cookie)
    cookie.update(baked: true)
  end
end
