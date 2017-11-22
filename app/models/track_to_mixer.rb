class TrackToMixer < ApplicationRecord
  belongs_to :track
  belongs_to :trackmixer
end
