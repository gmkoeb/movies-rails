class Movie < ApplicationRecord
  belongs_to :genre
  belongs_to :director
  validates_uniqueness_of :title
end
