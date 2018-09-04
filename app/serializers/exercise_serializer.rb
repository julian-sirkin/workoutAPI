class ExerciseSerializer < ActiveModel::Serializer
  attributes :id, :name, :exercise_type, :duration, :description
  has_one :user
end
