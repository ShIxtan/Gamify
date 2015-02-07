# == Schema Information
#
# Table name: task_clicks
#
#  id             :integer          not null, primary key
#  clickable_type :string           not null
#  clickable_id   :integer          not null
#  sign           :integer          default("1")
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

require 'test_helper'

class TaskClickTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
