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
  include Clickable
  include Taggable

  validates :title, :user_id, presence: true

  belongs_to :user
end
