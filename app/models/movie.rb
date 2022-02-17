class Movie < ApplicationRecord
  validates :title, uniqueness: true
  validates :title, presence: true
  has_many :bookmarks
  validates :overview, presence: true
end
