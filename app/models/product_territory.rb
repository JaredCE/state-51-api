class ProductTerritory < ApplicationRecord
  belongs_to :product
  belongs_to :territory
end
