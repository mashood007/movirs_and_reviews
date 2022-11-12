# frozen_string_literal: true

# Used to store reviews data from csv
class ImportReviewsService < ImportService
  def call
    CSV.foreach(file.path, headers: true) do |row|
      movie = Movie.find_by(name: row['Movie'])
      next if movie.blank?

      user = User.find_or_initialize_by(name: row['User'])
      user.reviews.build(movie: movie, stars: row['Stars'], review: row['Review'])
      user.save
    end
    :success
  end
end
