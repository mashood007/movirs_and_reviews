# frozen_string_literal: true

# Used to store movies data from csv
class ImportMoviesService < ImportService
  def call
    CSV.foreach(file.path, headers: true) do |row|
      director = Director.find_or_create_by(name: row['Director'])
      location = Location.find_or_create_by(city: row['Filming location'], country: row['Country'])
      actor =  Actor.find_or_create_by(name: row['Actor'])
      movie = Movie.find_or_initialize_by(
        year: row['Year'],
        director: director,
        description: row['Description'],
        location: location,
        name: row['Movie']
      )
      movie.movie_actors.build(actor: actor)
      movie.save
    end
    :success
  end
end
