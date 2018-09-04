class CreateExcercises < ActiveRecord::Migration[5.1]
  def change
    create_table :excercises do |t|
      t.string :name
      t.references :user, foreign_key: true
      t.string :exercise_type
      t.integer :duration
      t.text :description

      t.timestamps
    end
  end
end
