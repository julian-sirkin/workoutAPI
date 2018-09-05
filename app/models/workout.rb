class Workout < ApplicationRecord
  has_many :workoutexercises, dependent: :destroy
  belongs_to :user
  has_many :exercises, through: :workoutexercises
end
