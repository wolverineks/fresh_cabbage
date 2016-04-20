start = Time.now
puts "Seed started at: #{start}"

# Delete current DB contents
User.delete_all
Movie.delete_all
Category.delete_all
MovieCategory.delete_all
Review.delete_all
Rating.delete_all
Like.delete_all


# Create Users
User.create!({
  name: "q bert",
  username: "q",
  password: "password",
  email: "q@q.com",
  role: "user"
  })

User.create!({
  name: "Steve Jobs",
  username: "sjobs",
  password: "password",
  email: "steve@apple.com",
  role: "admin"
  })

User.create!({
  name: "Bill Gates",
  username: "bgates",
  password: "password",
  email: "bill@ms.com",
  role: "critic"
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
    release_date: Faker::Time.between(DateTime.now - 10000, DateTime.now + 300),
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
  review = Review.create!({
    reviewer: critics.sample,
    body: Faker::Lorem.paragraph(6),
    movie: movies.sample,
    published_on: [DateTime.now + (-100..0).to_a.sample, nil].sample,
    })
  end
  reviews = Review.all

200.times do
  Rating.create({
    user: users.sample,
    movie: movies.sample,
    value: [0, 1, 2, 3, 4].sample + [0, 0.5, 1].sample,
  })
end

200.times do
  Like.create({
    user: users.sample,
    review: reviews.sample
  })
end

finish = Time.now
duration = (finish - start).round(1)

puts "Seed finished at: #{finish}"
puts "Duration: #{duration} seconds"

puts "SEEDING COMPLETE"
puts "#{User.count} Users created."
puts "#{critics.count} Critics created."
puts "#{Movie.count} Movies created."
puts "#{Category.count} Categories created."
puts "#{MovieCategory.count} MovieCategories exist."
puts "#{Review.count} Reviews created."
puts "#{Rating.count} Ratings created."
puts "#{Like.count} Likes created."
