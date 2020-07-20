class OrderItem < ApplicationRecord
  # associations
  belongs_to :order
  belongs_to :product
end
