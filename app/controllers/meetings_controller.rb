class MeetingsController < ApplicationController

  def new
  end

  def create
    @match = Match.find(params[:match_id])
    @meeting = Meeting.new(meeting_params)
    @meeting.dog = @match.dog
    @meeting.second_dog = @match.second_dog
    if @meeting.save
      redirect_to match_path(@match)
    else
      render "match/show", status: :unprocessable_entity
    end
  end
  
  def index
    # @meetings = current_user.dog.meetings
    @past_meetings = current_user.dog.meetings.send(:past)
    @today_meetings = current_user.dog.meetings.send(:today)
    @future_meetings = current_user.dog.meetings.send(:future)
  end
  

  private

  def meeting_params
    params.require(:meeting).permit(:date, :place_id, :dog_id, :second_dog_id)
  end
end
