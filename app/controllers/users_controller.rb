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
      redirect_to :controller => "users", :action => :show
    end
    
    def index
      @users = User.all
    end
    
    def show
      @events = Event.all
      @users = User.all
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
          redirect_to :controller => "users", :action => :showStudentView
        end
      else 
        return
      end
    end
    
    def logout
    end
end
