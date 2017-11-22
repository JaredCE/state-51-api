class ProductTrack < ApplicationRecord
  belongs_to :product
  belongs_to :track
end
