# == Schema Information
#
# Table name: habits
#
#  id         :integer          not null, primary key
#  title      :string           not null
#  user_id    :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Habit < ActiveRecord::Base
  belongs_to :user
end
