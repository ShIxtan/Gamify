# == Schema Information
#
# Table name: habits
#
#  id          :integer          not null, primary key
#  title       :string           not null
#  user_id     :integer          not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  rank        :integer
#  quality     :string           default("gb")
#  description :string
#  strength    :integer          default("3")
#

require 'test_helper'

class HabitTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
