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

    def create
        user_workout = UserWorkout.create(user_workouts_params)
        byebug
    end

    private

    def user_workouts_params
        params.require(:user_workout).permit(:user_id, :workout_id)
    end

end
