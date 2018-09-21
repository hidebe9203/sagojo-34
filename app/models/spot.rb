class Spot < ApplicationRecord
  has_many :work_spots
  has_many :works, through: :work_spots, dependent: :destroy 
end
