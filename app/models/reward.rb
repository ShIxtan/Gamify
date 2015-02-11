# == Schema Information
#
# Table name: rewards
#
#  id          :integer          not null, primary key
#  title       :string           not null
#  rank        :integer
#  user_id     :integer          not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  description :string
#

class Reward < ActiveRecord::Base
  validates :title, :user_id, presence: true

  belongs_to :user
  has_many :task_clicks, as: :clickable
  has_many :taggings, as: :taggable
  has_many :tags, through: :taggings

  def clicks
    datecount = self.task_clicks.where("date(created_at) > ?", 15.days.ago).group("date(created_at)").count

    datecount.map { |date| date.last }
  end
end
