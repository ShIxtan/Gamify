# == Schema Information
#
# Table name: todos
#
#  id          :integer          not null, primary key
#  title       :text             not null
#  user_id     :integer          not null
#  rank        :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  description :string
#  strength    :integer          default("3")
#

require 'test_helper'

class TodoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
