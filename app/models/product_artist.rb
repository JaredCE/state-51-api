class ProductArtist < ApplicationRecord
  belongs_to :product
  belongs_to :artist
end
