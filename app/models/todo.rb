# == Schema Information
#
# Table name: todos
#
#  id          :integer          not null, primary key
#  title       :text             not null
#  user_id     :integer          not null
#  rank        :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  description :string
#  strength    :integer          default("3")
#

class Todo < ActiveRecord::Base
  validates :title, :user_id, presence: true

  belongs_to :user
  has_many :task_clicks, as: :clickable
  has_many :taggings, as: :taggable
  has_many :tags, through: :taggings

  def clicks
    datecount = self.task_clicks.where("date(created_at) > ?", 15.days.ago).group("date(created_at)").count

    datecount.map { |date| date.last }
  end

  def days_since_created
    (Time.now - self.created_at) / 86400
  end
end
