class MessagesController < ApplicationController
  def create
    @match = Match.find(params[:match_id])
    @message = Message.new(message_params)
    @message.match = @match
    @message.user = current_user
    if @message.save
      MatchChannel.broadcast_to(
        @match,
        {
          user_id: current_user.id,
          html: render_to_string(partial: "message", locals: { message: @message })
        }
      )

       head :ok
    else
    end
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end
