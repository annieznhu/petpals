class Review < ApplicationRecord
  belongs_to :place
  belongs_to :user
  validates :content, :rating, presence: true
end
