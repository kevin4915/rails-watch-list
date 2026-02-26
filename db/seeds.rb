# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end



Movie.create(
  title: "Inception",
  overview: "A skilled thief who steals corporate secrets through dream-sharing technology is given the inverse task of planting an idea into the mind of a CEO.",
  poster_url: "https://image.tmdb.org/t/p/original/9gk7adHYeDvHkCSEqAvQNLV5Uge.jpg",
  rating: 8.3
)
Movie.create(
  title: "The Dark Knight",
  overview: "Batman faces the Joker, a criminal mastermind who plunges Gotham City into chaos and forces the hero closer to crossing the fine line between justice and vigilantism.",
  poster_url: "https://image.tmdb.org/t/p/original/qJ2tW6WMUDux911r6m7haRef0WH.jpg",
  rating: 9.0
)
Movie.create(
  title: "Interstellar",
  overview: "A team of explorers travel through a wormhole in space in an attempt to ensure humanity's survival.",
  poster_url: "https://image.tmdb.org/t/p/original/rAiYTfKGqDCRIIqoNMq1v3B8xYH.jpg",
  rating: 8.6
)
Movie.create(
  title: "Parasite",
  overview: "A poor family schemes to become employed by a wealthy household by infiltrating their lives and posing as unrelated, highly qualified individuals.",
  poster_url: "https://image.tmdb.org/t/p/original/7IiTTgloJzvGI1TAYymCfbfl3vT.jpg",
  rating: 8.5
)
Movie.create(
  title: "Gladiator",
  overview: "A former Roman General sets out to exact vengeance against the corrupt emperor who murdered his family and sent him into slavery.",
  poster_url: "https://image.tmdb.org/t/p/original/ty8TGRuvJLPUmAR1H1nRIsgwvim.jpg",
  rating: 8.5
)
Movie.create(
  title: "The Shawshank Redemption",
  overview: "Two imprisoned men bond over several years, finding solace and eventual redemption through acts of common decency.",
  poster_url: "https://image.tmdb.org/t/p/original/q6y0Go1tsGEsmtFryDOJo3dEmqu.jpg",
  rating: 9.3
)
Movie.create(
  title: "The Matrix",
  overview: "A computer hacker learns from mysterious rebels about the true nature of his reality and his role in the war against its controllers.",
  poster_url: "https://image.tmdb.org/t/p/original/aOIuZAjPaRIE6CMzbazvcHuHXDc.jpg",
  rating: 8.7
)
Movie.create(
  title: "Avengers: Endgame",
  overview: "After the devastating events of Avengers: Infinity War, the Avengers assemble once more to reverse Thanos' actions and restore balance to the universe.",
  poster_url: "https://image.tmdb.org/t/p/original/or06FN3Dka5tukK1e9sl16pB3iy.jpg",
  rating: 8.4
)

puts "Finished! Created #{Movie.count} movies."
