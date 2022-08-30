class Place < ApplicationRecord
  validates :address, presence: true
  has_many :reviews
end
