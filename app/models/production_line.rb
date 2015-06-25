class ProductionLine < ActiveRecord::Base
  belongs_to :factory
  belongs_to :car_model
end