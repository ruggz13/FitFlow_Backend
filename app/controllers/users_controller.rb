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

    def logout
        session[:id] = nil
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
