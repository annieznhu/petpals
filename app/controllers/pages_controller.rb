class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end

  def home_user
    @likes = Like.where.not(dog: current_user.dog).last(4)
    @meetings = Meeting.where(date: Date.today)
    @reviews = Review.all
    @dog = Dog.find(current_user.dog.id)
  end
end
