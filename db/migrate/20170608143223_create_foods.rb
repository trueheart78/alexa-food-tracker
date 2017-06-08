class CreateFoods < ActiveRecord::Migration[5.1]
  def change
    create_table :foods do |t|
      t.string :name
      t.string :description
      t.integer :quantity, default: 1
      t.references :household, foreign_key: true
      t.boolean :deleted, default: false
      t.date :use_by

      t.timestamps
      t.index [:household_id, :quantity, :deleted]
      t.index [:household_id, :deleted]
    end
  end
end
