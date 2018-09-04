class Workout < ApplicationRecord
  has_many :workoutexercises
  belongs_to :user
  has_many :exercises, through: :workoutexercises
end
