class Exercise < ApplicationRecord
  belongs_to :user
  has_many :workoutexercises
  has_many :workouts, through: :workoutexercises

  validates :name, uniqueness: true
end
