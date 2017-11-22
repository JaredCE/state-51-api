class TrackToLyricist < ApplicationRecord
  belongs_to :track
  belongs_to :tracklyricist
end
