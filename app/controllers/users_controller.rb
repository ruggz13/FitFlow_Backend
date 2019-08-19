class UsersController < ApplicationController


    def index 
        users = User.all

        render json: users
    end

    def login
        user = User.find_by(username: params[:username])
        # user_workouts = UserWorkout.find_by(user_id: user.id)

        render json: user.to_json(user_serializer)
    end

    def addworkouts

   
        workout = Workout.create(name: params[:name], description: params[:description], video_url: params[:video_url], notes: params[:notes])
        user = User.find(params[:user_id])
        user_workout = UserWorkout.create(user: user, workout: workout, day_id: params[:day_id])
     
        render json: user.to_json(user_serializer)
    end


    private

    def user_serializer
        {
            :only => [:id, :name, :username],
            :include => {:user_workouts => 
                {
                    :only => [:day_id], 
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
