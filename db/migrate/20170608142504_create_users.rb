class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.boolean :administrator, default: false
      t.boolean :active, default: true
      t.boolean :head_of_household, default: false
      t.references :household, foreign_key: true

      t.timestamps
      t.index [:household_id, :active]
    end
  end
end
