class AddRankToHabits < ActiveRecord::Migration
  def change
    add_column(:habits, :rank, :integer)
  end
end
