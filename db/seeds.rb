# puts "🌱 Seeding spices..."

# Seed your database here

puts "Deleting old data..."
Movie.destroy_all

puts "creating movie data..."

Movie.create(
    title: "The Shawshank Redemption",
    year: 1994,
    description: "Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.",
    movie_url: "https://www.imdb.com/title/tt0111161/",
    user_id: nil,
    originally_fetched: true
)

Movie.create(
    title: "The Godfather",
    year: 1972,
    description: "The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son.",
    movie_url: "https://www.imdb.com/title/tt0068646/",
    user_id: nil,
    originally_fetched: true
)

Movie.create(
    title: "The Dark Knight",
    year: 2008,
    description: "When the menace known as the Joker wreaks havoc and chaos on the people of Gotham, Batman must accept one of the greatest psychological and physical tests of his ability to fight injustice.",
    movie_url: "https://www.imdb.com/title/tt0468569/",
    user_id: nil,
    originally_fetched: true
)

Movie.create(
    title: "The Godfather: Part II",
    year: 1974,
    description: "The early life and career of Vito Corleone in 1920s New York City is portrayed, while his son, Michael, expands and tightens his grip on the family crime syndicate.",
    movie_url: "https://www.imdb.com/title/tt0071562/",
    user_id: nil,
    originally_fetched: true
)

Movie.create(
    title: "12 Angry Men",
    year: 1957,
    description: "A jury holdout attempts to prevent a miscarriage of justice by forcing his colleagues to reconsider the evidence.",
    movie_url: "https://www.imdb.com/title/tt0050083/",
    user_id: nil,
    originally_fetched: true
)

Movie.create(
    title: "Pulp Fiction",
    year: 1994,
    description: "The lives of two mob hitmen, a boxer, a gangster and his wife, and a pair of diner bandits intertwine in four tales of violence and redemption.",
    movie_url: "https://www.imdb.com/title/tt0110912/",
    user_id: nil,
    originally_fetched: true
)

Movie.create(
    title: "The Lord of the Rings: The Fellowship of the Ring",
    year: 2001,
    description: "A meek Hobbit from the Shire and eight companions set out on a journey to destroy the powerful One Ring and save Middle-earth from the Dark Lord Sauron..",
    movie_url: "https://www.imdb.com/title/tt0120737/",
    user_id: nil,
    originally_fetched: true
)

Movie.create(
    title: "Forrest Gump",
    year: 1994,
    description: "The presidencies of Kennedy and Johnson, the events of Vietnam, Watergate and other historical events unfold through the perspective of an Alabama man with an IQ of 75, whose only desire is to be reunited with his childhood sweetheart.",
    movie_url: "https://www.imdb.com/title/tt0109830/",
    user_id: nil,
    originally_fetched: true
)

Movie.create(
    title: "The Matrix",
    year: 1999,
    description: "A computer hacker learns from mysterious rebels about the true nature of his reality and his role in the war against its controllers.",
    movie_url: "https://www.youtube.com/watch?v=m8e-FF8MsqU",
    user_id: nil,
    originally_fetched: true
)

Movie.create(
    title: "Inception",
    year: 2010,
    description: "A thief who steals corporate secrets through the use of dream-sharing technology is given the inverse task of planting an idea into the mind of a CEO.",
    movie_url: "https://www.youtube.com/watch?v=YoHD9XEInc0",
    user_id: nil,
    originally_fetched: true
)

Movie.create(
    title: "The Lion King",
    year: 1994,
    description: "Lion prince Simba and his father are targeted by his bitter uncle, who wants to ascend the throne himself.",
    movie_url: "https://www.youtube.com/watch?v=4sj1MT05lAA",
    user_id: nil,
    originally_fetched: true
)

Movie.create(
    title: "The Silence of the Lambs",
    year: 1991,
    description: "A young FBI cadet must receive the help of an incarcerated and manipulative cannibal killer to help catch another serial killer, a madman who skins his victims.",
    movie_url: "https://www.youtube.com/watch?v=lQKs169Sl0I",
    user_id: nil,
    originally_fetched: true
)

User.create(
  name: "Jesse",
  email: "jesse@mail.com",
  password: "1234"
)













# 30.times do 
#     user = User.create(
#         "name": Faker::Name.name,
#         "email": Faker::Internet.email,
#         "password": Faker::String.random(length: 4)
#     )
#     rand(3..5).times do
#         Movie.create(
#         "title": Faker::Movie.title,
#         "year": Faker::Number.leading_zero_number(digits: 10),
#         "description": Faker::Movie.quote,
#         "user_id": user.id
#     )
#     end
# end



puts "✅ Done seeding!"
