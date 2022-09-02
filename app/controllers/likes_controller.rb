class LikesController < ApplicationController
  def create
    @like = Like.new(like_params)
    @like.user = current_user
    @like.dog_id = @dog.id
    @like.save
  end

  private

  def like_params
    params.require(:like).permit(:user_id, :dog_id)
  end
end
