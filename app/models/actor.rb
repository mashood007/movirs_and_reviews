# frozen_string_literal: true

# Actor is a child of Artist, which is mapped with artists table having type Actor
class Actor < Artist
  validates :name, uniqueness: true
  scope :search_by_name, ->(search) { where('name ILIKE ?', "%#{search}%") if search.present? }
  # Ex:- scope :active, -> {where(:active => true)}
end
