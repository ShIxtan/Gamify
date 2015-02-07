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

require 'test_helper'

class DailyTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
