class LikesController < ApplicationController
  def create
    @like = Like.new
    @like.user = current_user
    @like.dog = Dog.find(params[:dog_id])
    @like.save
  end
end
