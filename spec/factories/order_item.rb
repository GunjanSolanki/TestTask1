# frozen_string_literal: true

FactoryBot.define do
  factory :order_item do
    sequence(:quantity) { |n| "#{n}" }
    order
    product
  end
end
