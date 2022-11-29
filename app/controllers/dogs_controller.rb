class DogsController < ApplicationController
  before_action :set_dog, only: %i[show update]

  def index
    @dogs = Dog.where.not(user: current_user)

    if params.dig(:query).present?
      @dogs = @dogs.global_search(params[:query])
    end
  end

  def show
    dogs = Dog.where.not(user: current_user)
    dog_index = dogs.index(@dog)
    @previous_dog = dogs[dog_index - 1]
    @next_dog = dogs[dog_index + 1] || dogs.first
  end

  def edit
    @dog = Dog.find(current_user.dog.id)
  end

  def update
    if @dog.update(dog_params)
      @dog.save
      flash[:success] = "To-do item successfully updated!"
      redirect_to home_user_path(@dog)
    else
      flash.now[:error] = "To-do item update failed"
      render :edit
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
