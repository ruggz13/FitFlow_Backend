class UserWorkoutsController < ApplicationController

    def index
        user_workouts = UserWorkout.all
    render json: user_workouts
    end





    def show
        user = User.find(params[:id])
        # byebug
        render json: user.user_workouts
        #, include [:user, :workouts]
        # bird: sighting.bird, location: sighting.location }
    end



end
