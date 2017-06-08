class CreateFoodLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :food_locations do |t|
      t.references :food, foreign_key: true
      t.references :location, foreign_key: true

      t.timestamps
    end

    add_index :food_locations, [:food_id, :location_id], unique: true
  end
end
