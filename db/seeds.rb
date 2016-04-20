IMDB_TOP_250_TITLES = "
	The Shawshank Redemption
	The Godfather
	The Godfather: Part II
	The Dark Knight
	Schindler's List
	12 Angry Men
	Pulp Fiction
	The Lord of the Rings: The Return of the King
	The Good, the Bad and the Ugly
	Fight Club
	The Lord of the Rings: The Fellowship of the Ring
	Star Wars: Episode V - The Empire Strikes Back
	Forrest Gump
	Inception
	The Lord of the Rings: The Two Towers
	One Flew Over the Cuckoo's Nest
	Goodfellas
	The Matrix
	Seven Samurai
	Star Wars: Episode IV - A New Hope
	City of God
	Se7en
	The Silence of the Lambs
	It's a Wonderful Life
	The Usual Suspects
	Life Is Beautiful
	Léon: The Professional
	Once Upon a Time in the West
	Spirited Away
	Saving Private Ryan
	Interstellar
	American History X
	Casablanca
	City Lights
	Psycho
	Raiders of the Lost Ark
	Rear Window
	The Intouchables
	Modern Times
	The Green Mile
	Terminator 2: Judgment Day
	The Pianist
	The Departed
	Back to the Future
	Whiplash
	Gladiator
	Memento
	Apocalypse Now
	The Prestige
	Dr. Strangelove or: How I Learned to Stop Worrying and Love the Bomb
	The Lion King
	Sunset Blvd.
	Alien
	The Great Dictator
	The Lives of Others
	Cinema Paradiso
	Django Unchained
	The Shining
	Paths of Glory
	Grave of the Fireflies
	WALL·E
	The Dark Knight Rises
	American Beauty
	Aliens
	Princess Mononoke
	Oldboy
	Citizen Kane
	North by Northwest
	Once Upon a Time in America
	Das Boot
	Vertigo
	Star Wars: Episode VI - Return of the Jedi
	Witness for the Prosecution
	M
	Reservoir Dogs
	Amélie
	Braveheart
	Requiem for a Dream
	A Clockwork Orange
	Taxi Driver
	Toy Story 3
	Double Indemnity
	To Kill a Mockingbird
	Lawrence of Arabia
	Eternal Sunshine of the Spotless Mind
	Full Metal Jacket
	Amadeus
	The Sting
	2001: A Space Odyssey
	Bicycle Thieves
	Singin' in the Rain
	Snatch.
	Monty Python and the Holy Grail
	Toy Story
	Inglourious Basterds
	The Kid
	L.A. Confidential
	For a Few Dollars More
	Rashomon
	The Apartment
	Indiana Jones and the Last Crusade
	Scarface
	A Separation
	All About Eve
	Metropolis
	Yojimbo
	The Treasure of the Sierra Madre
	Batman Begins
	Some Like It Hot
	The Hunt
	3 Idiots
	Unforgiven
	The Third Man
	Up
	Good Will Hunting
	Inside Out
	Raging Bull
	Downfall
	Die Hard
	Chinatown
	Star Wars: Episode VII - The Force Awakens
	Room
	The Great Escape
	Heat
	On the Waterfront
	Pan's Labyrinth
	Deadpool
	My Neighbor Totoro
	The Message
	Zootopia
	Mr. Smith Goes to Washington
	Ikiru
	Ran
	The Bridge on the River Kwai
	The Gold Rush
	Sunrise
	The Seventh Seal
	The Secret in Their Eyes
	Blade Runner
	Lock, Stock and Two Smoking Barrels
	Wild Strawberries
	The General
	Howl's Moving Castle
	Casino
	The Elephant Man
	Warrior
	The Wolf of Wall Street
	V for Vendetta
	Judgment at Nuremberg
	A Beautiful Mind
	Gran Torino
	The Big Lebowski
	Incendies
	The Deer Hunter
	Rebecca
	Gone with the Wind
	Fargo
	Trainspotting
	Cool Hand Luke
	How to Train Your Dragon
	Dial M for Murder
	The Sixth Sense
	Finding Nemo
	Into the Wild
	The Thing
	No Country for Old Men
	It Happened One Night
	Mary and Max
	Gone Girl
	Kill Bill: Vol. 1
	Rush
	Life of Brian
	Hotel Rwanda
	There Will Be Blood
	The Maltese Falcon
	Platoon
	Mad Max: Fury Road
	Spotlight
	The Wages of Fear
	Network
	Butch Cassidy and the Sundance Kid
	The Revenant
	The 400 Blows
	Stand by Me
	Shutter Island
	In the Name of the Father
	Persona
	12 Years a Slave
	The Grand Budapest Hotel
	Amores Perros
	The Princess Bride
	Million Dollar Baby
	Touch of Evil
	Ben-Hur
	Wild Tales
	Annie Hall
	The Grapes of Wrath
	Hachi: A Dog's Tale
	Nausicaä of the Valley of the Wind
	Stalker
	Jurassic Park
	Diabolique
	Gandhi
	The Bourne Ultimatum
	8½
	Before Sunrise
	Donnie Darko
	The Wizard of Oz
	Memories of Murder
	Rocky
	The Truman Show
	The Best Years of Our Lives
	The Terminator
	Sin City
	Twelve Monkeys
	Monsters, Inc.
	Harry Potter and the Deathly Hallows: Part 2
	Strangers on a Train
	Groundhog Day
	Infernal Affairs
	Jaws
	La Haine
	The Battle of Algiers
	Barry Lyndon
	The Martian
	Prisoners
	Dog Day Afternoon
	Fanny and Alexander
	Ip Man
	The Imitation Game
	The Avengers
	Pirates of the Caribbean: The Curse of the Black Pearl
	The King's Speech
	The Help
	A Fistful of Dollars
	Guardians of the Galaxy
	Catch Me If You Can
	Throne of Blood
	Castle in the Sky
	Roman Holiday
	High Noon
	La Grande Illusion
	Beauty and the Beast
	In the Mood for Love
	Notorious
	Who's Afraid of Virginia Woolf?
	Before Sunset
	Akira
	Spring, Summer, Fall, Winter... and Spring
	La Dolce Vita
"

start = Time.now
puts "Seed started at: #{start}"

# Delete current DB contents
# User.delete_all
# Movie.delete_all
# Category.delete_all
# MovieCategory.delete_all
# Review.delete_all
# Rating.delete_all
# Like.delete_all


# Create Users
unless User.find_by(username: 'q')
	User.create!({
	  name: "q bert",
	  username: "q",
	  password: "password",
	  email: "q@q.com",
	  role: "user"
	  })
end

unless User.find_by(username: 'sjobs')
	User.create!({
	  name: "Steve Jobs",
	  username: "sjobs",
	  password: "password",
	  email: "steve@apple.com",
	  role: "admin"
	  })
end

unless User.find_by(username: 'bgates')
	User.create!({
	  name: "Bill Gates",
	  username: "bgates",
	  password: "password",
	  email: "bill@ms.com",
	  role: "critic"
	  })
end

unless User.users.count > 50
	50.times do
		user = User.find_by(username: Faker::Internet.user_name)
		unless user
		  User.assign_attributes({
		    name: Faker::Name.name,
		    username: Faker::Internet.user_name,
		    email: Faker::Internet.email,
		    password: "password",
		    role: "user"
		  })
		end
	end
end
users = User.all

unless User.critics.count > 20
	20.times do
		user = User.find_by(username: Faker::Internet.user_name)
		unless user
		  User.create!({
		    name: Faker::Name.name,
		    username: Faker::Internet.user_name,
		    email: Faker::Internet.email,
		    password: "password",
		    role: "critic"
		  })
		end
	end
end
critics = User.where(role: "critic")

if Movie.count < 200
  IMDB_TOP_250_TITLES.split(/\n+/).reject(&:blank?).each do |title|
    puts title
    movie = OMDB.title(title)
    release_date = begin
      Date.parse(movie.released)
    rescue ArgumentError
      nil
    end

    puts movie

    local_movie = Movie.find_or_initialize_by(imdb_id: movie.imdb_id)

    local_movie.assign_attributes({
      title: movie.title,
      mpaa_rating: movie.rated,
      runtime: movie.runtime,
      release_date: release_date,
      synopsis: movie.plot,
      image_url: movie.poster,
      omdb_json: movie
    })
    local_movie.save!

    movie_genres = movie.genre.split(',').map(&:strip)
    movie_genres.each do |genre|
      category = Category.find_or_create_by(name: genre)
      category.movies << local_movie unless category.movies.include?(local_movie)
    end
  end
end
movies = Movie.all


100.times do
  review = Review.create!({
    reviewer: critics.sample,
    body: Faker::Lorem.paragraph(6),
    movie: movies.sample,
    published_on: [DateTime.now + (-100..0).to_a.sample, nil].sample,
    })
  end
  reviews = Review.all

1000.times do
  Rating.create({
    user: users.sample,
    movie: movies.sample,
    value: [0, 1, 2, 3, 4].sample + [0, 0.5, 1].sample,
  })
end


1000.times do
  Rating.create({
    user: critics.sample,
    movie: movies.sample,
    value: [0, 1, 2, 3, 4].sample + [0, 0.5, 1].sample,
  })
end


2000.times do
  Like.create({
    user: users.sample,
    review: reviews.sample
  })
end

2000.times do
  Like.create({
    user: critics.sample,
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
