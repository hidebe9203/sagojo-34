class Work < ApplicationRecord
  has_many :work_tags, dependent: :destroy
  has_many :tags, through: :work_tags, dependent: :destroy
  # belongs_to :occupation
  belongs_to :company
  has_many :work_spots, dependent: :destroy
  has_many :spots, through: :work_spots, dependent: :destroy

  validates :title, :content, :image, :detail, :duration, :requierment, :member, :limit, presence: true
  mount_uploader :image, ImageUploader


  # シゴト募集締切までの残り日数を算出
  require "date"

  def self.days_left(work)
    limit_days = work.limit
    today = Date.today
    days_left = limit_days - today
    return days_left.to_i
  end

end
