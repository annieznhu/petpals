class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :username, :first_name, :last_name, :email, presence: true
  has_many :reviews
  has_many :likes
  has_many :messages
  has_one :dog
  has_one_attached :photo

  def any_meetings?(time)
    dog.meetings.send(time)
  end
end
