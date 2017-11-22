class TrackToProduct < ApplicationRecord
  belongs_to :track
  belongs_to :product
end
