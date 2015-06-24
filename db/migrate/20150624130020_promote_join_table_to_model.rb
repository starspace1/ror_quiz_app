class PromoteJoinTableToModel < ActiveRecord::Migration
  def change
    add_column :car_models_factories, :annual_quota, :integer
    rename_table :car_models_factories, :production_lines
  end
end
