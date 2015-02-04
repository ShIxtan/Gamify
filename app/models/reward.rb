# == Schema Information
#
# Table name: rewards
#
#  id         :integer          not null, primary key
#  title      :string           not null
#  rank       :integer
#  user_id    :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Reward < ActiveRecord::Base
  validates :title, :user_id, presence: true

  belongs_to :user
end
