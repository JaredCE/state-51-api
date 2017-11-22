class Product < ApplicationRecord
  validates_presence_of :title, :grouping_id
  belongs_to :artist
  belongs_to :releaseformat
  belongs_to :soundcarrier
  belongs_to :priceband
  belongs_to :publisher
  belongs_to :copyrightholder
  belongs_to :label
end
