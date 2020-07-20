class Order < ApplicationRecord
  # associations
  has_many :order_items, dependent: :destroy
  belongs_to :fulfiller, polymorphic: true

  enum status: %i[not_fulfilled fulfilled]
  accepts_nested_attributes_for :order_items, allow_destroy: true, reject_if: :all_blank

end
