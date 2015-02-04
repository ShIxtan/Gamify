class AddHealthAndXpToUsers < ActiveRecord::Migration
  def change
    add_column(:users, :xp, :integer, default: 0)
    add_column(:users, :health, :integer, default: 50)
  end
end
