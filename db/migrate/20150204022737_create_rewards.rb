class CreateRewards < ActiveRecord::Migration
  def change
    create_table :rewards do |t|
      t.string :title, null: false
      t.integer :rank
      t.integer :user_id, null: false, index: true

      t.timestamps null: false
    end
  end
end
