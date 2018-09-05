class Exercise < ApplicationRecord
  belongs_to :user
  has_many :workoutexercises, dependent: :destroy
  has_many :workouts, through: :workoutexercises

  validates :name, uniqueness: true
end
