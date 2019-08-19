# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Workout.destroy_all

user1 = User.createuser(name: "Nick", username: "ruggierine")
user2 = User.create(name: "Rob", username: "cyberRob")
user3 = User.create(name: "Sam", username: "pickyeater25")

workout1 = Workout.create(name: "Dumbbell Bicep Curls", description: "Hold the barbell with both hands facing up so the wrists, elbows, and shoulders are in a straight line about shoulder-width apart. Lift the barbell toward the shoulders while bending the elbows and keeping them next to the middle of the body. Slowly lower the weight to return to the starting position. Keep chest still, using just the arms for the movement.", video_url: "https://youtu.be/cBSD6mQIPQk", notes: "3x10 for 3-4 sets") 
workout2 = Workout.create(name: "Tricep Kickback", description: "Starting Position: Hold a dumbbell in your left hand and assume a split-stance position placing your right leg forward, but keeping your weight evenly distributed through the heels of both feet. Stiffen your torso by contracting your abdominal and core muscles ('bracing'). Place your right hand on your right thigh or knee and slowly lean forward, transferring most of your upper extremity body weight into that right side. Depress and retract your left scapula (pull your shoulder down and back) and maintain this position throughout the exercise. Your head should be aligned with your spine.", video_url: "https://youtu.be/6HU218LHxEw", notes: "3x10 for 3-4 sets")
workout3 = Workout.create(name: "Dumbbell Chest Press", description: "Starting Position: Grasp two dumbbells and lie supine (on your back) on a flat bench with your feet firmly placed on the floor or upon a raised platform to allow you to maintain a flat or neutral (flat) spine. If working with a spotter, signal the spotter for assistance in handing you your the dumbbells.", video_url: "https://youtu.be/1Qi4IzoyRP4", notes: "3x10 for 3-4 sets")
workout4 = Workout.create(name: "Leg Press", description: "Adjust the bottom position of the machine and seat yourself. Select an appropriate load for your training, and then plant your feet a little wider than shoulder width on the platform. Grasp the handles, maintaining good spinal position with your chest up and your head looking forward. This will be your starting position. Driving through the heels of your feet, extend through the hips and knees to push the sled upward. Do not lock out your knees. After holding the top position for a movement, return to the starting position without fully returning the weight to the stack.", video_url: 'https://youtu.be/GvRgijoJ2xY', notes: 'Do Often until the pain goes away' )


