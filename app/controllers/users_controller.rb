class UsersController < ApplicationController
    
    def new

    end
    
    def testFunction
      return true
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
    
end
