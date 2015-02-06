# == Schema Information
#
# Table name: dailies
#
#  id         :integer          not null, primary key
#  title      :text             not null
#  rank       :integer
#  user_id    :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Daily < ActiveRecord::Base
  validates :title, :user_id, presence: true

  belongs_to :user
  has_many :task_clicks, as: :clickable
end
