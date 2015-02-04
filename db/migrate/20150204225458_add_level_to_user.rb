class AddLevelToUser < ActiveRecord::Migration
  def change
    add_column(:users, :level, :integer, default: 1)
    add_column(:users, :max_health, :integer, default: 50)
  end
end
