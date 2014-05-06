namespace :db do
   desc "Fill database with sample data"
   task populate: :environment do
   admin = User.create!(name: "David Foale",
                email: "foalefamily@gmail.com",
                password: "chocolate100",
                password_confirmation: "chocolate100",
				admin: true)


      users = User.all(limit: 6)
4.times do
content = Faker::Lorem.sentence(5)
users.each { |user| user.microposts.create!(content: content) }

		end
	end
end
