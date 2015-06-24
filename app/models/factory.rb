class Factory < ActiveRecord::Base
  belongs_to :manufacturer
  has_many :car_models, :through => :production_lines
  has_many :production_lines
  validates :city, uniqueness: true, presence: true
  validates :state, uniqueness: true, presence: true

end
