class CarModel < ActiveRecord::Base
    belongs_to :manufacturer
    validates_presence_of :name
    validates_uniqueness_of :name
end
