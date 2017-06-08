class CreateLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :locations do |t|
      t.string :name
      t.string :description
      t.references :household, foreign_key: true
      t.boolean :deleted, default: false

      t.timestamps
      t.index [:household_id, :deleted]
    end
  end
end
