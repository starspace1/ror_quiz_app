class AssociateCarModelsAndFactories < ActiveRecord::Migration
  def change
      create_table :car_models_factories, id: false do |t|
        t.belongs_to :car_models, index: true
        t.belongs_to :factories, index: true
    end
  end
end
