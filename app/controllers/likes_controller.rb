class LikesController < ApplicationController
  def create
    @like = Like.new
    @like.user = current_user
    @like.dog = Dog.find(params[:dog_id])
    @like.save
    @dog = @like.dog
    if @dog.users.include?(current_user) && current_user.dog.users.include?(@dog.user)
      Match.create(dog: @dog, second_dog: current_user.dog)
      flash[:match] = true
      redirect_to dogs_path
    end
  end
end
