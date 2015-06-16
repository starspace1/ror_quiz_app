class CarModel < ActiveRecord::Base
    belongs_to :manufacturer
    validates :name, presence: true, uniqueness: true

end
