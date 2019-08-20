class WorkoutsController < ApplicationController


    def index 
        workouts = Workout.all
        render json: workouts
    end

    def show

    end

    def create

    
        render json: user
    end

    def update
       workout = Workout.find(params[:id])
       workout.update(workout_params)
       render json: workout
    end


    def destroy
        Workout.find(params[:id]).destroy
    end

    private

    # def day_param
    #     params.require(:workout).permit(:day_id)
    # end

    def workout_params
        params.require(:workout).permit(:name, :description, :video_url, :notes)
    end

end
