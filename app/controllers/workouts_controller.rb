class WorkoutsController < ApplicationController


    def index 
        workouts = Workout.all
        render json: workouts
    end

    def create

    end

    def show

    end

    def update
    end


    def destroy
    end



end
