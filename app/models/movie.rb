# frozen_string_literal: true

class Movie < ApplicationRecord
  belongs_to :director
  belongs_to :location
  has_many :movie_actors
  has_many :actors, through: :movie_actors

  validates :name, uniqueness: true
end
