class InspirationsController < ApplicationController
  before_action :require_logged_in_user

  def change
    @message = current_user.message
    current_user.message = Message.find_next(@message)
    current_user.save!
    session[:hidden] = true
    redirect_to root_path
  end

end
