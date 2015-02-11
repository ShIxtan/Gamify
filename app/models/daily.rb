# == Schema Information
#
# Table name: dailies
#
#  id           :integer          not null, primary key
#  title        :text             not null
#  rank         :integer
#  user_id      :integer          not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  last_checked :datetime
#  description  :string
#  strength     :integer          default("3")
#

class Daily < ActiveRecord::Base
  validates :title, :user_id, presence: true

  belongs_to :user
  has_many :task_clicks, as: :clickable
  has_many :taggings, as: :taggable
  has_many :tags, through: :taggings

  def clicks
    datecount = self.task_clicks.where("date(created_at) > ?", 15.days.ago).group("date(created_at)").count

    datecount.map { |date| date.last }
  end

  def update_strength
    self.strength += 1
    self.save
  end
end
