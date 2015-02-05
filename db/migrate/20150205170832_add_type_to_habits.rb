class AddTypeToHabits < ActiveRecord::Migration
  def change
    add_column(:habits, :quality, :string, default: "gb")
  end
end
