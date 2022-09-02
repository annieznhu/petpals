class MatchesController < ApplicationController
  def index
    @matches = current_user.dog.matches
  end

  def show
    @match = current_user.dog.matches.find(params[:id])
    @message = Message.new
  end
end
