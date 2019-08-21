class Workout < ApplicationRecord
    has_many :user_workouts, dependent: :destroy
    has_many :users, through: :user_workouts
    validates :name, presence: true
end
