class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :workstatuses, dependent: :destroy
  has_one :profile

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable
end
