class WorkoutDetail < ApplicationRecord
  belongs_to :excercise
  belongs_to :workout

  # create a method where that takes an excercise and places it inside a workout
  def following?(leader_id)
    relationships = Relationship.where(follower_id: self.id, leader_id: leader_id)
    if relationships.length > 0
      return true
    else
      return false
    end
  end
end
