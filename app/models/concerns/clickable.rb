module Clickable
  extend ActiveSupport::Concern

  included do
    has_many :task_clicks, as: :clickable
  end

  def clicks
    result = {labels: [], data: []}
    date_count = self.task_clicks.where("date(created_at) > ?", 15.days.ago).group("date(created_at)").count

    15.times do |day|
      result[:labels].unshift(day.days.ago.to_date)
      result[:data].unshift(date_count[day.days.ago.to_date] || 0)
    end

    return result
  end
end
