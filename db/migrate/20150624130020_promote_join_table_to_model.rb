class PromoteJoinTableToModel < ActiveRecord::Migration
  def change
    rename_table :car_models_factories, :production_lines
    add_column :production_lines, :annual_quota, :integer
  end
end
