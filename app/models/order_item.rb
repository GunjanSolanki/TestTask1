class OrderItem < ApplicationRecord
  # associations
  belongs_to :order
  belongs_to :product

  # validations
  validates :quantity, presence: true
end
