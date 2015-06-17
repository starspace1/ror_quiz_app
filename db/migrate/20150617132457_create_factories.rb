class CreateFactories < ActiveRecord::Migration
  def change
    create_table :factories do |t|
      t.string :city
      t.string :state
      t.boolean :unionized

      t.timestamps null: false
    end
  end
end
