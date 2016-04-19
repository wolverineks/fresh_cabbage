# Delete current DB contents
User.delete_all
Movie.delete_all
Category.delete_all
Review.delete_all
Rating.delete_all
Comment.delete_all

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

50.times do 
    Movie.create!({
    title: Faker::Lorem.sentence,
    mpaa_rating: ['G','PG','PG-13','NC-17','R','X'].sample,
    runtime: Faker::Number.between(60, 240),
    release_date: Faker::Time.between(DateTime.now - 10, DateTime.now - 6),
    synopsis: Faker::Lorem.paragraph,
  })
end

movies = Movie.all

10.times do
  Category.create!({
    name: Faker::Name.word,
  })
end
categories = Category.all

100.times do 
  MovieCategory.create!({
    movie: movies.sample,
    category: categories.sample
  })
end


100.times do 
    Review.create!({
    reviewer: critics.sample,
    body: Faker::Lorem.paragraph,
  })
end
reviews = Review.all

100.times do
  Rating.create!({
    value: Faker::Number.between(0,5),
    user: users.sample,
    movie: movies.sample,
  })
end
ratings = Rating.all

200.times do 
    Comment.create!({
    review: reviews.sample,
    body: Faker::Lorem.paragraph,
    user: users.sample
  })
end
comments = Comment.all


puts "SEEDING COMPLETE"
puts "#{User.count} Users created."
puts "#{critics.count} Critics created."
puts "#{Movie.count} Movies created."
puts "#{Category.count} Categories created."
puts "#{Review.count} Reviews created."
puts "#{Rating.count} Ratings created."
puts "#{Comment.count} Comments created."
