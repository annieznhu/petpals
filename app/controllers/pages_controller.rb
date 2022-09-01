class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def home_user
    @dogs = Dog.all.sample(6)
  end
end
