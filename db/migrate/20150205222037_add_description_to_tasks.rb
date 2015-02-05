class AddDescriptionToTasks < ActiveRecord::Migration
  def change
    add_column(:habits, :description, :string)
    add_column(:dailies, :description, :string)
    add_column(:todos, :description, :string)
    add_column(:rewards, :description, :string)
  end
end
