class StaticPagesController < ApplicationController
  def home
    if (session[:userId] != nil)
        redirect_to user_path
    end
  end

  def help
  end
  
  def about
  end
  
  def contact
  end
  
end
