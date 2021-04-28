class Order < ApplicationRecord
  belongs_to :received
  
  validates :number, presence: true, uniqueness: true
end
