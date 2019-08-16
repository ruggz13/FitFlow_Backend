class WorkoutsController < ApplicationController


    def index 
        workouts = Workout.all
        render json: workouts
    end

    def show
        
    end




end
