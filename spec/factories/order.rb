# frozen_string_literal: true

FactoryBot.define do
  factory :order do
    amount { 100.0 }
    status { 0 }
    association :fulfiller, factory: :distribution_center
  end
end
