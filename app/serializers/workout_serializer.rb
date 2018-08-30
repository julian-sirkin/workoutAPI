class WorkoutSerializer < ActiveModel::Serializer
  attributes :id, :completed_on, :duration, :workout_type, :editable
  has_one :user

  def editable
    scope == object.user
  end
end
