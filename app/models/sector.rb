class Sector < ApplicationRecord
  has_many :properties, dependent: :destroy
end
