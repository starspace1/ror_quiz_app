class CreateCarModels < ActiveRecord::Migration
  def change
    create_table :car_models do |t|
      t.string :name
      t.integer :mpg
      t.integer :price
      t.integer :manufacturer_id, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
