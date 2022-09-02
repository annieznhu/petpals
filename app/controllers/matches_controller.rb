class MatchesController < ApplicationController
  def index
  end

  def show
    @match = current_user.dog.matches.find(params[:id])
    @message = Message.new
  end
end
