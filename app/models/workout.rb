class Workout < ApplicationRecord
    has_many :user_workouts
    has_many :users, through: :user_workouts


    def convertDayToDayId
        if 
    end

end
