require 'faker'

30.times do
	u = User.new(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name,  description: Faker::Lorem.sentence, email: Faker::Internet.email, password: Faker::Lorem.characters(number: 10))
	u.save
end

puts "Remplissage de la table Users - OK"

5.times do
	e = Event.new(title: Faker::GreekPhilosophers.name, description: Faker::GreekPhilosophers.quote, start_date: DateTime.now, duration: rand(1..5), price: rand(20..90), location: "Paris", user_id: User.all.sample.id)
	e.save
end

puts "Remplissage de la table Events - OK"


