class Dog < ApplicationRecord
  belongs_to :user
  validates :name, :age, :species, :temper, :address, :description, presence: true
end
