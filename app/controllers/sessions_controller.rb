class SessionsController < ApplicationController
  def new
  end
 
  def create
    user = User.find_by(userId: params[:session][:userId])
    # flash[:alert] = "hello";
    if user
      log_in user
      redirect_to user
    else
    flash.now[:alert] = 'Invalid user ID! Try again, or contact an admin for help.'
    render 'new'
    end
  end
  
  def destroy
    log_out
    redirect_to root_url
  end
end
