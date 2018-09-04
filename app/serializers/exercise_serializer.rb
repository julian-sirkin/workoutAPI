class ExerciseSerializer < ActiveModel::Serializer
  attributes :id, :name, :exercise_type, :duration, :description
  has_one :user
  has_many :workoutexercises
  has_many :workouts, through: :workoutexercise
end
