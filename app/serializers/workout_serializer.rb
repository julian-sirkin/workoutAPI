class WorkoutSerializer < ActiveModel::Serializer
  attributes :id, :completed_on, :duration, :workout_type
  has_one :user
end
