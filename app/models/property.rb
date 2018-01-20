class Property < ApplicationRecord
  belongs_to :sector
  has_many :scenarios, dependent: :destroy
end
