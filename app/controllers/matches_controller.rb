class MatchesController < ApplicationController
  def index
  end

  def show
    @match = Match.find(params[:id])
    @message = Message.new
  end
end
