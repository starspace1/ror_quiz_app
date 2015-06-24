class CarModel < ActiveRecord::Base
    belongs_to :manufacturer
    has_many :production_lines
    has_many :factories, through: :production_lines
    validates :name, presence: true, uniqueness: true
end
