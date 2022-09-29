class WorkoutDetail < ApplicationRecord
  belongs_to :excercise
  belongs_to :workout

  # create a method where that takes an excercise and places it inside a workout
  
end
