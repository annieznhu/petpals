class DogsController < ApplicationController
  before_action :set_dog, only: %i[show]

  def index
    if current_user.dog
      @dogs = Dog.all.where.not(id: current_user.dog.id)
    else
      @dogs = Dog.all
    end
  end

  def show
  end

  private

  def dog_params
    params.require(:dog).permit(:name, :temper, :age, :description, :species, :user, :address, :photos, :latitude, :longitude)
  end

  def set_dog
    @dog = Dog.find(params[:id])
  end
end
