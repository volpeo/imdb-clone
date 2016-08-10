class Movie < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :title, presence: true

  def average_rating
    reviews.reduce(0) { |sum, review| sum + review.rating } / reviews.count
  end

  def self.genres
    [
      "sci-fy",
      "comedy",
      "action",
      "fantastic",
      "cartoon",
      "drama",
      "thriller"
    ]
  end
end
