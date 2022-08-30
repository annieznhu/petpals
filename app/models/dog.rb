class Dog < ApplicationRecord
  belongs_to :user
  validates :name, :age, :species, :temper, :address, :description, presence: true

  has_many :walks
  has_many :likes

  has_many :matches
  has_many :dog_matches, :class_name => 'Matches', :foreign_key => 'dog_id'
  has_many :second_dog_matches, :class_name => 'Matches', :foreign_key => 'second_dog_id'

  has_many :meetings
  has_many :dog_meetings, :class_name => 'Meetings', :foreign_key => 'dog_id'
  has_many :second_dog_meetings, :class_name => 'Meetings', :foreign_key => 'second_dog_id'
end
