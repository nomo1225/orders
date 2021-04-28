class Received < ApplicationRecord
  belongs_to :place
  belongs_to :product
  belongs_to :seller
  has_one :order
  
  validates :number, presence: true
  validates :desired_day, presence: true
  validates :name, presence: true, length: {maximum: 15 }
  validates :quantity, presence: true
end
