class ExerciseSerializer < ActiveModel::Serializer
  attributes :id, :name, :exercise_type, :duration, :description, :workouts, :workoutexercises
  has_many :workoutexercises
  has_many :workouts, through: :workoutexercise
end
