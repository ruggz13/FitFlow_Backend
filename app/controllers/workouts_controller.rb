class WorkoutsController < ApplicationController


    def index 
        workouts = Workout.all
        render json: workouts
    end

    def show

    end

    def create
        workout = Workout.create(workout_params)
        myWorkout = UserWorkout.create(day_param)
    end

    def update
    end


    def destroy

    end

    private

    def day_param
        params.require(:workout).permit(:day_id)
    end

    def workout_params
        params.require(:workout).permit(:name, :description, :video_url, :notes)
    end

end
