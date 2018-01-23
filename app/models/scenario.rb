class Scenario < ApplicationRecord
  belongs_to :property
  has_one :rental_detail, dependent: :destroy
  has_one :valuation_detail, dependent: :destroy
end
