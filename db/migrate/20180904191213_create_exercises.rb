class CreateExercises < ActiveRecord::Migration[5.1]
  def change
    create_table :exercises do |t|
      t.references :user, foreign_key: true
      t.string :name
      t.string :exercise_type
      t.integer :duration
      t.text :description

      t.timestamps
    end
  end
end
