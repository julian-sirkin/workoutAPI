class WorkoutSerializer < ActiveModel::Serializer
  attributes :id, :completed_on, :duration, :workout_type, :exercises, :editable
  has_one :user

  has_many :workoutexercises
  has_many :exercises, through: :workoutexercise
  def editable
    scope == object.user
  end
end
