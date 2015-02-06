class CreateTaskClicks < ActiveRecord::Migration
  def change
    create_table :task_clicks do |t|
      t.string :clickable_type, null: false
      t.integer :clickable_id, null: false, index: true
      t.integer :sign, default: 1

      t.timestamps null: false
    end
  end
end
