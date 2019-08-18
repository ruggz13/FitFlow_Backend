class UsersController < ApplicationController


    def index 
        users = User.all

        render json: users
    end

    def login
        user = User.find_by(username: params[:username])
        session[:id] = user.id
        render json: {user: user, user_workouts: user.user_workouts, workouts: user.workouts}
    end

    def logout
        session[:id] = nil
    end


end
