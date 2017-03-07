class UsersController < ApplicationController
    
    def new

    end
    
    def create
      #needs user id, last name, first name look at db
      #random user id 
      # first and last name
      uniqId = false
      while !uniqId do
        newUserId = Random.rand(9999)
        puts newUserId
        #check if client userId alreaady exists. If it does generate another
        check = User.where(["userId = ?", newUserId])
        if(check == nil || check == [])
          uniqId = true
        end
      end
      first = "Jacob"
      last  = "Stafford"
      @user = User.create!(firstName: first, lastName: last, userId: newUserId)
    end
    
    def index
      @users = User.all
    end
    
end
