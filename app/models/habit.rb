# == Schema Information
#
# Table name: habits
#
#  id          :integer          not null, primary key
#  title       :string           not null
#  user_id     :integer          not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  rank        :integer
#  quality     :string           default("gb")
#  description :string
#  strength    :integer          default("3")
#

class Habit < ActiveRecord::Base
  include Clickable
  include Taggable

  validates :title, :user_id, presence: true

  belongs_to :user

  def update_strength
    per_day = self.clicks_per_day

    if per_day >= 2
      self.strength = 5
    elsif per_day >= 1.5
      self.strength = 4
    elsif per_day >= 1
      self.strength = 3
    elsif per_day >= 0.5
      self.strength = 2
    else
      self.strength = 1
    end

    self.save!
  end

  def clicks_per_day
    total_clicks = self.task_clicks.inject(0){|sum, c| sum += c.sign}
    days_since_created = ((Time.now - self.created_at) / 86400.0) + 1.0

    return total_clicks/days_since_created
  end
end
