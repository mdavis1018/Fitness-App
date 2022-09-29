# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.create(
  name: "Marcus",
  email: "marcus@test.com",
  password_digest: "password",
  height: 75,
  weight: 185,
)

User.create(
  name: "Tom",
  email: "tom@test.com",
  password_digest: "password",
  height: 70,
  weight: 170,
)

User.create(
  name: "Phil",
  email: "phil@test.com",
  password_digest: "password",
  height: 80,
  weight: 190,
)

Workout.create(
  title: "Chest Day",
  user_id: 1,
)

Workout.create(
  title: "Arm Day",
  user_id: 2,
)

Excercise.create(
  name: "Bench Press", 
  description: "To grow your chest", excercise_category_id: 1,
)

WorkoutDetail.create(
  excercise_id: 1,
  workout_id: 2,
  weight: 100,
  reps: 5,
)
WorkoutDetail.create(
  excercise_id: 2,
  workout_id: 1,
  weight: 45,
  reps: 12,
)

ExcerciseCategory.create(
  title: "Chest",
  description: "This folder holds all chest excercises",
)

ExcerciseCategory.create(
  title: "Biceps",
  description: "This folder holds all bicep excercises",
)
p "hello"