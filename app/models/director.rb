# frozen_string_literal: true

# Director is a child of Artist, which is mapped with artists table having type Director
class Director < Artist
  has_many :movies
  accepts_nested_attributes_for :movies, allow_destroy: true
  validates :name, uniqueness: true
end
