class CreateWorkouts < ActiveRecord::Migration[5.1]
  def change
    create_table :workouts do |t|
      t.references :user, foreign_key: true
      t.date :completed_on
      t.integer :duration
      t.string :workout_type

      t.timestamps
    end
  end
end
