class Api::V1::MessagesController < ActionController::Base
  before_action :set_channel_by_name, only: [:index]

  def index
    @messages = @channel.messages
    render json: @messages
  end

  def create
  end

  private

  def set_channel_by_name
    @channel = Channel.find_by_name(params[:channel_id])
  end
end
