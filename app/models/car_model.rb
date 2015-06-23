class CarModel < ActiveRecord::Base
    belongs_to :manufacturer

    has_and_belongs_to_many :factories
    validates :name, presence: true, uniqueness: true

end
