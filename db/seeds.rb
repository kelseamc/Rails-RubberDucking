Student.destroy_all
Duck.destroy_all

10.times do
  Student.create(name: Faker::Name.name, mod: rand(1..5))
end

student_ids = Student.all.ids
# Student.all.map {|student| student_ids << student.id}

5.times do
  Duck.create(name: Faker::Creature::Dog.meme_phrase, description: Faker::Creature::Dog.breed, student_id: student_ids.sample )
end 

