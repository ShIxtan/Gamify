class AddCostToRewards < ActiveRecord::Migration
  def change
    add_column(:rewards, :cost, :integer, default: 10)
  end
end
