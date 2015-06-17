class Factory < ActiveRecord::Base
  belongs_to :manufacturer

  validates :city, uniqueness: true, presence: true
  validates :state, uniqueness: true, presence: true

end
