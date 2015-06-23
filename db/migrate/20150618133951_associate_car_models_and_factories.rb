class AssociateCarModelsAndFactories < ActiveRecord::Migration
  def change
      create_table :car_models_factories, id: false do |t|
        t.belongs_to :car_model, index: true
        t.belongs_to :factory, index: true
    end
  end
end
