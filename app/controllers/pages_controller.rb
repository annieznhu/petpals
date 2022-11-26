class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end

  def home_user
    @likes = Like.where(dog: current_user.dog).last(4)
    @meetings = Meeting.where(date: Date.today)
    @reviews = Review.all
  end
end
