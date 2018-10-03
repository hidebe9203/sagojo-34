class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :workstatuses, dependent: :destroy
  has_one :profile

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable
  has_one :profile, dependent: :destroy, class_name: "Profile"
  # has_many :likes, dependent: :destroy
  has_many :workstatuses, dependent: :destroy
end
