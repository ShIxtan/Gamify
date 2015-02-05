class Add < ActiveRecord::Migration
  def change
    add_column(:dailies, :last_checked, :datetime)
  end
end
