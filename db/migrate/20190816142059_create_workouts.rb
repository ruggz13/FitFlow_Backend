class CreateWorkouts < ActiveRecord::Migration[5.2]
  def change
    create_table :workouts do |t|
      t.string :name
      t.text :description
      t.string :video_url
      t.text :notes

      t.timestamps
    end
  end
end
