# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

ExcerciseCategory.create(
  title: "Chest",
  description: "This folder holds all chest excercises",
  image_url: "https://www.mz-store.com/blog/wp-content/uploads_en/2018/10/chest.jpg"
)

ExcerciseCategory.create(
  title: "Arms",
  description: "This folder holds all arm excercises",
  image_url: "https://a7m2a8t7.rocketcdn.me/wp-content/uploads/2021/09/Lagging-Chest-e1631999652576.jpg"
)

ExcerciseCategory.create(
  title: "Quads",
  description: "This folder holds all quad excercises",
  image_url: "https://preview.redd.it/6ifxch8p1hp21.jpg?auto=webp&s=b36eef5ffd48a08dfdfac8d29ef3c8702d0a7eab"
)


User.create(
  name: "Marcus",
  email: "marcus@test.com",
  password: "password",
  height: 75,
  weight: 185,
)

User.create(
  name: "Tom",
  email: "tom@test.com",
  password: "password",
  height: 70,
  weight: 170,
)

User.create(
  name: "Phil",
  email: "phil@test.com",
  password: "password",
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
Excercise.create(name: "dumbell fly",
  description: "To grow your chest", 
  excercise_category_id: 1,)


  Excercise.create(name: "Bicep Curls",
    description: "To grow your biceps", 
    excercise_category_id: 2,)

    Excercise.create(name: "Hammer curls",
      description: "To grow your biceps", 
      excercise_category_id: 2,)

WorkoutDetail.create(
  excercise_id: 1,
  workout_id: 1,
  weight: 100,
  reps: 5,
)
WorkoutDetail.create(
  excercise_id: 2,
  workout_id: 1,
  weight: 45,
  reps: 12,
)

