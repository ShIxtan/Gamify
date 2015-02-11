module Clickable
  extend ActiveSupport::Concern

  included do
    has_many :task_clicks, as: :clickable
  end

  def clicks
    datecount = self.task_clicks.where("date(created_at) > ?", 15.days.ago).group("date(created_at)").count

    datecount.map { |date| date.last }
  end
end
