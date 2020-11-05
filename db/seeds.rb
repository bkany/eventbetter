require 'faker'

30.times do
	first_name = Faker::Name.first_name
	email = first_name.downcase + "@yopmail.com"
	u = User.new(first_name: first_name, last_name: Faker::Name.last_name,  description: Faker::Lorem.sentence, email: email, password: Faker::Lorem.characters(number: 10))
	u.save
end

puts "Remplissage de la table Users - OK"

5.times do
	e = Event.new(title: Faker::Lorem.characters(number: 10), description: Faker::Lorem.characters(number: 50), start_date: DateTime.now, duration: rand(1..5), price: rand(20..90), location: "Praaris", admin: User.all.sample)
	e.save
end

puts "Remplissage de la table Events - OK"

15.times do
	a = Attendance.new(user_id: User.all.sample.id, event_id: Event.all.sample.id)
	a.save
end

puts "Remplissage de la table Attendance - OK" 
