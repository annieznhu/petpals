class Review < ApplicationRecord
  belongs_to :place
  belongs_to :user
  validates :content, presence: true
end
