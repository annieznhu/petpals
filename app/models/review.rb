class Review < ApplicationRecord
  belongs_to :place
  belongs_to :user
  validates :content, presence: true
  validates :rating, inclusion: { in: %w(1 2 3 4 5 ), message: "%{value} veuillez donner une note de 1 à 5." }
end
