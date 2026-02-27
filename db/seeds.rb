# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Cleaning bookmarks..."
Bookmark.destroy_all

comments = [
  "Great movie",
  "Really good",
  "Loved it",
  "Not bad",
  "Amazing film",
  "Pretty solid",
  "Would rewatch",
  "Too slow",
  "Fantastic story",
  "Very emotional",
  "Great acting",
  "Bit confusing",
  "Super intense",
  "Nice surprise",
  "Good overall",
  "Absolutely brilliant",
  "Quite disappointing",
  "Exceeded expectations",
  "Highly recommended",
  "Visually stunning",
  "Poor storyline",
  "Strong performances",
  "Could be better",
  "Instant classic",
  "Forgettable plot",
  "Surprisingly good",
  "Deep and moving",
  "Too predictable",
  "Well directed",
  "Brilliant soundtrack",
  "Mediocre at best",
  "Loved the visuals",
  "Not worth hype",
  "Great pacing",
  "Emotional rollercoaster"
]

puts "Creating bookmarks..."

lists  = List.all.to_a
movies = Movie.all.to_a

movies.each do |movie|
  list = lists.sample
  number_of_comments = rand(0..3)

  number_of_comments.times do
    Bookmark.create!(
      comment: comments.sample,
      rating: rand(1..5),
      movie: movie,
      list: list
    )
  end
end

puts "Done!"
