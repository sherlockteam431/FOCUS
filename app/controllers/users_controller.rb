class UsersController < ApplicationController
    
    def new
      #needs user id, last name, first name look at db
      @user = User.new

    end
    
    def create
    end
    
    def index
      @users = User.all
    end
    
end
