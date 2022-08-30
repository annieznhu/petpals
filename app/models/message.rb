class Message < ApplicationRecord
  belongs_to :user
  belongs_to :match
  validates :content, presence: true
  has_many :users
end
