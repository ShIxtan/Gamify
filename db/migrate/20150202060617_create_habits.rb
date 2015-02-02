class CreateHabits < ActiveRecord::Migration
  def change
    create_table :habits do |t|
      t.string :title, null: false
      t.integer :user_id, null: false, index: true

      t.timestamps null: false
    end
  end
end
