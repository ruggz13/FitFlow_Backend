class UsersController < ApplicationController


    def index 
        users = User.all
        render json: users
    end

    
    def
        
    end

end
