require 'faker'

user = User.create({
  email: 'email@email.com',
  password: 'password',
  password_confirmation: 'password'
})

puts "Created #{User.count} users"

5.times do |index|
  Post.create!(title: Faker::BackToTheFuture.character,
               content: Faker::BackToTheFuture.quote,
               user_id: user.id,
              )
end

puts "Created #{Post.count} posts"
