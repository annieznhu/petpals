class Dog < ApplicationRecord
  belongs_to :user
  validates :name, :age, :species, :temper, :avatar, :address, :description, presence: true
end
