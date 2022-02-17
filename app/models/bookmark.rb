class Bookmark < ApplicationRecord
  belongs_to :movie, dependent: :destroy
  belongs_to :list
  validates :comment, length: { minimum: 6 }
  validates_uniqueness_of :movie, :scope => [:list]
end
