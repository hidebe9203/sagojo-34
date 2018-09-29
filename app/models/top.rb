class Top < ApplicationController
  include CommonActions

  # シゴト募集締切までの残り日数を算出
  require "date"

  def self.days_left(work)
    limit_days = work.limit
    today = Date.today
    days_left = limit_days - today
    return days_left.to_i

end
