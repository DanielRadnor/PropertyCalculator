class Scenario < ApplicationRecord
  belongs_to :property
  has_many :rental_details, dependent: :destroy
end
