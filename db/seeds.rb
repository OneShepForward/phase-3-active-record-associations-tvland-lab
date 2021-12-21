puts "Creating Actors..."

5.times{Actor.create(first_name: Faker::Name.male_first_name, last_name: Faker::Name.last_name)}

puts "Creating Characters..."

5.times{Character.create(name: Faker::Fantasy::Tolkien.character, actor_id: rand(1..5), show_id: rand(1..5), catchphrase: Faker::Fantasy::Tolkien.poem)}

puts "Creating Networks..."

5.times{Network.create(call_letters: "WISH", channel: rand(1..20))}

puts "Creating shows..."

5.times{Show.create(name: Faker::Fantasy::Tolkien.location, day: "Monday", season: "2", genre: "Action", network_id: rand(1..5) )}