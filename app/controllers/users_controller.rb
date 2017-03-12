class UsersController < ApplicationController
    
    def new
      #needs user id, last name, first name look at db
      @user = User.new
    end
    
    def create(first, last)
      uniqId = false
      #check if client userId already exists. If it does generate another id
      while !uniqId do
        newUserId = Random.rand(9999)
        check = User.where(["userId = ?", newUserId])
        if(check == nil || check == [])
          uniqId = true
        end
      end
      @user = User.create!(firstName: first, lastName: last, userId: newUserId)
    end
    
    def index
      @users = User.all
    end
    
    def show
      @events = Event.all
      @users = User.all
    end  
    
    def showTopPerformers
      @headings = User.getHeadings
      @rank = [1,2,3,4,5]
      @users = User.order('totalPoints').reverse_order.first 3
    end
    
    def showStudentView
      @user = User.first #change this to use specific user
      @events = Event.getEventsbyName(@user.eventNames)
    end
    
end
