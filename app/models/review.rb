class Review < ApplicationRecord
  belongs_to :restaurant
  RATES = (1...5)

  validates :rating, inclusion: { in: RATES }
  validates :content, :rating, presence: true

end
