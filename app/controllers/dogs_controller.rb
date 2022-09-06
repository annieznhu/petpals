class DogsController < ApplicationController
  before_action :set_dog, only: %i[show]

  def index
    @dogs = Dog.where.not(user: current_user)

    if params.dig(:query).present?
      @dogs = @dogs.global_search(params[:query])
    end
  end

  def show
    dogs = Dog.where.not(user: current_user)
    @dogs = []
    dogs.each do |dog|
      @dogs << dog
    end
  end

  private

  def dog_params
    params.require(:dog).permit(:name, :temper, :age, :description, :species, :user, :address, :photos, :latitude, :longitude)
  end

  def set_dog
    @dog = Dog.find(params[:id])
  end
end
