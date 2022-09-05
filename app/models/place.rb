class Place < ApplicationRecord
  validates :address, :name, presence: true
  has_many :reviews
  has_many :meetings
  has_one_attached :photo

end
