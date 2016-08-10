class Review < ApplicationRecord
  belongs_to :movie

  validates :author, presence: true
  validates :rating, presence: true
end
