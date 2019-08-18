class UserWorkoutsController < ApplicationController

    def index
        user_workouts = UserWorkout.all
    render json: user_workouts
    end

    def show
        user = User.find(params[:id])
        # user_workout = UserWorkout.find_by(user_id: params[:id])
        render json: { id: user.workouts[0].id, user: user, workouts: user.workouts} 
        # bird: sighting.bird, location: sighting.location }

    end



end
