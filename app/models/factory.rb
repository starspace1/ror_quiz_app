class Factory < ActiveRecord::Base
  belongs_to :manufacturer
  has_many :car_models
  has_many :production_lines, through: :car_models
  validates :city, uniqueness: true, presence: true
  validates :state, uniqueness: true, presence: true

end
