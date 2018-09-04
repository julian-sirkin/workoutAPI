class WorkoutexerciseSerializer < ActiveModel::Serializer
  attributes :id, :reps, :sets, :distance, :notes
  has_one :workout
  has_one :exercise
end
