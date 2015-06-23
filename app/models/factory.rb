class Factory < ActiveRecord::Base
  belongs_to :manufacturer
  has_and_belongs_to_many :car_models

  validates :city, uniqueness: true, presence: true
  validates :state, uniqueness: true, presence: true

end
