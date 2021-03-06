class UsersController < ApplicationController
    
    @cUser = nil
    
    def new
      #if empty names then return
      if(params[:message])
        flash[:message] = params[:message]
        params[:message] = nil
      end
      @user = User.new
    end
    
    def create
      
      first = params[:user][:firstName]
      last =  params[:user][:lastName]
      if(first == "" || last == "")
        flash[:message] = "All fields must be filled in." # if using flash messages
        redirect_to :controller => "users", :action => :new
        return
      end
      
      uniqId = false
      #check if client userId already exists. If it does generate another id
      while !uniqId do
        newUserId = Random.rand(9999)
        check = User.where(userId: newUserId)
        if(check == nil || check == [])
          uniqId = true
        end
      end
      @user = User.create!(firstName: first, lastName: last, userId: newUserId)
      flash.now[:success] = "Welcome to SHERLOCK!"
      redirect_to @user
    end
    
    # private

    # def user_params
    #   params.require(:user).permit(:firstName, :lastName, )
    # end
    
    def show
      if (session[:user_id] == nil)
        flash[:alert] = "You are not logged in";
        redirect_to login_path
      else 
        @user = User.find(session[:user_id])
        @events = @user.events
        @points = @user.getPoints
      end
    end
    
    def message
      user = User.find(session[:user_id])
      user.comment = params[:user][:comment]
      user.hasComment = true
      user.save
      respond_to do |format|
        
      format.html{redirect_to user_path}
      format.js {render layout: false}
    end
    end
end
