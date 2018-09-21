class Work < ApplicationRecord
  has_many :work_tags, dependent: :destroy
  has_many :tags, through: :work_tags, dependent: :destroy
  belongs_to :occupation
  belongs_to :company
  has_many :work_spots, dependent: :destroy
  has_many :spots, through: :work_spots, dependent: :destroy
end
