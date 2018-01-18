class Calculator < ApplicationRecord
  has_many :scenarios, dependent: :destroy
end
