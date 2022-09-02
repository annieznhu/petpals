class MatchesController < ApplicationController
  def index
    @matches = Match.all.where(dog_id: current_user.dog.id)
  end

  def show
    @match = current_user.dog.matches.find(params[:id])
    @message = Message.new
  end
end
