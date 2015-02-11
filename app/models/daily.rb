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
  include Clickable
  include Taggable

  validates :title, :user_id, presence: true

  belongs_to :user

  def update_strength
    self.strength += 1
    self.save
  end
end
