class Manufacturer < ActiveRecord::Base
	has_many :car_models
	has_many :factories

end
