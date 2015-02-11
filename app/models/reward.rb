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

  validates :title, :user_id, presence: true

  belongs_to :user
  has_many :taggings, as: :taggable
  has_many :tags, through: :taggings

end
