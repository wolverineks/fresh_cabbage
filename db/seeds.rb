# Delete current DB contents
User.delete_all
Movie.delete_all
Review.delete_all
Comment.delete_all
Category.delete_all
Rating.delete_all

start = Time.now

# Create Users
User.create!({
  name: "q bert",
  username: "q",
  password: "password",
  email: "q@q.com"
  })

User.create!({
  name: "Steve Jobs",
  username: "sjobs",
  password: "password",
  email: "steve@apple.com"
  })

User.create!({
  name: "Bill Gates",
  username: "bgates",
  password: "password",
  email: "bill@ms.com"
  })

20.times do
  User.create!({
    name: Faker::Name.name,
    username: Faker::Internet.user_name,
    email: Faker::Internet.email,
    password: "password",
    role: "user"
  })
end
users = User.all

20.times do
  User.create!({
    name: Faker::Name.name,
    username: Faker::Internet.user_name,
    email: Faker::Internet.email,
    password: "password",
    role: "critic"
  })
end
critics = User.where(role: "critic")

200.times do
    Movie.create!({
    title: Faker::Lorem.sentence,
    mpaa_rating: ['G','PG','PG-13','NC-17','R'].sample,
    runtime: Faker::Number.between(60, 240),
    release_date: Faker::Time.between(DateTime.now - 10, DateTime.now - 6),
    synopsis: Faker::Lorem.paragraph,
  })
end
movies = Movie.all

25.times do
  Category.create!({
    movies: movies.sample(15),
    name: Faker::Commerce.department,
    })
  end
  categories= Category.all

100.times do
    Review.create!({
    reviewer: critics.sample,
    body: Faker::Lorem.paragraph(6),
    movie: movies.sample
  })
end
reviews = Review.all

200.times do
    Comment.create!({
    review: reviews.sample,
    body: Faker::Lorem.paragraph(6),
    user: users.sample
  })
end
comments = Comment.all

15.times do
  Rating.create!({
    user: users.sample,
    movie: movies.sample,
    value: [0, 1, 2, 3, 4].sample + [0, 0.5, 1].sample
  })
end

finish = Time.now
duration = (finish - start).round(1)

puts "Seed started at: #{start}"
puts "Seed finished at: #{finish}"
puts "Duration: #{duration} seconds"

puts "SEEDING COMPLETE"
puts "#{User.count} Users created."
puts "#{critics.count} Critics created."
puts "#{Movie.count} Movies created."
puts "#{Review.count} Reviews created."
puts "#{Comment.count} Comments created."
puts "#{Rating.count} Ratingss created."
puts "#{Category.count} Categories created."
