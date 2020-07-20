# frozen_string_literal: true

FactoryBot.define do
  factory :order do
    status { 0 }
    association :fulfiller, factory: :distribution_center
  end
end
