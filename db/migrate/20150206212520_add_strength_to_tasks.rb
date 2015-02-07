class AddStrengthToTasks < ActiveRecord::Migration
  def change
    add_column(:todos, :strength, :integer, default: 3)
    add_column(:habits, :strength, :integer, default: 3)
    add_column(:dailies, :strength, :integer, default: 3)
  end
end
