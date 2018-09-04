class CreateWorkoutexercises < ActiveRecord::Migration[5.1]
  def change
    create_table :workoutexercises do |t|
      t.references :workout, foreign_key: true
      t.references :exercise, foreign_key: true
      t.integer :reps
      t.integer :sets
      t.string :distance
      t.text :notes

      t.timestamps
    end
  end
end
