class CreateHouseholds < ActiveRecord::Migration[5.1]
  def change
    create_table :households do |t|
      t.string :name
      t.boolean :active, default: true

      t.timestamps

      t.index :active
    end
  end
end
