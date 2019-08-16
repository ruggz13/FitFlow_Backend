class CreateUserWorkouts < ActiveRecord::Migration[5.2]
  def change
    create_table :user_workouts do |t|
      t.references :user, foreign_key: true
      t.references :workout, foreign_key: true
      t.integer :day_id

      t.timestamps
    end
  end
end
