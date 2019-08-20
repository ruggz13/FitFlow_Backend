class UsersController < ApplicationController


    def index 
        users = User.all

        render json: users
    end

    def login
        user = User.find_or_create_by(username: params[:username])
        # user_workouts = UserWorkout.find_by(user_id: user.id)

        render json: user.to_json(user_serializer)
    end

    def addworkouts
        workout = Workout.create(name: params[:name], description: params[:description], video_url: params[:video_url], notes: params[:notes])
        user = User.find(params[:user_id])
        user_workout = UserWorkout.create(user: user, workout: workout, day_id: params[:day_id])
     
        render json: user.to_json(user_serializer)
    end


    def delete_workout
   
        user = User.find(params[:user_id])
        UserWorkout.find(params[:user_workout_id]).destroy
       
        render json: user.to_json(user_serializer)
    end



    private

    def user_serializer
        {
            :only => [:id, :username],
            :include => {:user_workouts => 
                {
                    :only => [:id, :day_id], 
                    :include => {
                        :workout => {
                        :only => [:name, :video_url, :description, :notes]
                        }
                    }
                }
            }
        }
        # {
        #     id: self.id,
        #     name: self.name,
        #     username: self.username,
        #     user_workouts: self.user_workouts [
        #         {self ==user_workout}
        #     ]
        # }
    end


end
