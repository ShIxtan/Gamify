class CreateTaggings < ActiveRecord::Migration
  def change
    create_table :taggings do |t|
      t.references :taggable, polymorphic: true, index: true
      t.references :tag, index: true

      t.timestamps null: false
    end
  end
end
