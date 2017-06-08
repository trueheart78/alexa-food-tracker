class CreateFoodTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :food_types do |t|
      t.references :food, foreign_key: true
      t.references :type, foreign_key: true

      t.timestamps
    end

    add_index :food_types, [:food_id, :type_id], unique: true
  end
end
