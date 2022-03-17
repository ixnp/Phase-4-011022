class Ticket < ApplicationRecord
  belongs_to :user
  belongs_to :production
  #Review: Validations 
  validates :price, numericality: {greater_than_or_equal_to: 0}
end
