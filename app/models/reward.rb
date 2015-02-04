class Reward < ActiveRecord::Base
  validates :title, :user_id, presence: true

  belongs_to :user
end
