class Track < ApplicationRecord
  belongs_to :publisher
  belongs_to :copyrightholder
end
