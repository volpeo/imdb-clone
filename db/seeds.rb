
puts "= Seed begin"

Movie.destroy_all

genres = [
  "sci-fy",
  "comedy",
  "action",
  "fantastic",
  "cartoon",
  "drama",
  "thriller"
]

10.times do
  movie = Movie.create(
    title: Faker::Book.title,
    synopsis: Faker::Hipster.sentences.join(" "),
    director: Faker::Book.author,
    year: rand(1980..2018),
    genre: genres.sample
  )
  puts "- Seeding #{movie.title}"

  rand(5..20).times do
    puts "- Seeding a review"
    movie.reviews.create(
      content: Faker::ChuckNorris.fact,
      rating: rand(1..5),
      author: Faker::Superhero.name
    )
  end
end

puts "= Seed done"