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
      # @user = User.new(user_params)
      # if @user.save
      #   log_in @user
      #   flash[:success] = "Welcome to the Sample App!"
      #   redirect_to @user
      # else
      #   render 'new'
      # end
      
      
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
    
    
    def index
      @users = User.all
    end
    
    def show
      @events = Event.all
      @user = User.find(params[:id])

    end
    
    def showStudentView
      @userName = session[:firstName] #User.first #change this to use specific user
      #@events = Event.getEventsbyName(@user.eventNames)
    end
    
    def login
      @id = params[:session]
      if @id != nil
        @user = User.find_by(id: @id[:id])
        if (@user != nil)
          p "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!" +  @user.firstName
          session[:firstName] = @user.firstName
          redirect_to :controller => "users", :action => :show
        end
      else 
        return
      end
    end
    
    def attended_event?(eventName)
      if @user.events == nil
         return false
      elsif @user.events.where(:name => "Dummy 1").exists?
        return true
      end
      return false
    end
    helper_method :attended_event?
    
    def logout
    end
end
