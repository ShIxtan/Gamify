class CreateDailies < ActiveRecord::Migration
  def change
    create_table :dailies do |t|
      t.text :title, null: false
      t.integer :rank
      t.integer :user_id, null: false, index: true

      t.timestamps null: false
    end
  end
end
