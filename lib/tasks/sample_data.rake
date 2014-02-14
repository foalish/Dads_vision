namespace :db do
   desc "Fill database with sample data"
   task populate: :environment do
   admin = User.create!(name: "David Foale",
                email: "foalefamily@gmail.com",
                password: "chocolate100",
                password_confirmation: "chocolate100",
				admin: true)


      5.times do |n|
       name = Faker::Name.name
       email = "example-#{n+1}@gmail.com"
       password = "password"
       User.create!(name: name,
       email: email,
       password: password,
       password_confirmation: password)
		end
	end
end
