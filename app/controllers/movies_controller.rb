# frozen_string_literal: true

# Movies actions
class MoviesController < ApplicationController
  before_action :find_movie, only: [:show]

  def index
    @movies = Movie.all.includes(:director)
  end

  def show; end

  def import
    service = ImportMoviesService.new(params[:file])
    @result = service.call
  end

  private

  def find_movie
    @movie = Movie.find(params[:id])
  end
end
