class Company < ApplicationRecord
  has_many :works, dependent: :destroy
end
