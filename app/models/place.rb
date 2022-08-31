class Place < ApplicationRecord
  validates :address, :name, presence: true
  has_many :reviews
  has_one_attached :photo

end
