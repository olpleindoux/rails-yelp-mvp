class Review < ApplicationRecord
  belongs_to :restaurant

  RATES = [0, 1, 2, 3, 4, 5]
  # validates :rating, :inclusion => 0..5
  validates :rating, inclusion: { in: RATES }, numericality: { only_integer: true }

  validates :content, :rating, presence: true
end
