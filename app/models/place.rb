class Place < ApplicationRecord
  validates :address, :name, presence: true
  has_many :reviews, dependent: :destroy
  has_many :meetings
  has_one_attached :photo

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
