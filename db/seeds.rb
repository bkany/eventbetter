require 'faker'

10.times do
	u = User.new(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name,  description: Faker::Lorem.sentence, email: Faker::Internet.email)
	u.save
end

puts "Remplissage de la table Users - OK"
