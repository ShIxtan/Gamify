# == Schema Information
#
# Table name: todos
#
#  id         :integer          not null, primary key
#  title      :text             not null
#  user_id    :integer          not null
#  rank       :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Todo < ActiveRecord::Base
  validates :title, :user_id, presence: true

  belongs_to :user
end
