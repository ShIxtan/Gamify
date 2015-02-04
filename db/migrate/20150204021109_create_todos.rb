class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.text :title, null: false
      t.integer :user_id, null: false
      t.integer :rank

      t.timestamps null: false
    end
  end
end
