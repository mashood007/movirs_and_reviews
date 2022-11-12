# frozen_string_literal: true

class Location < ApplicationRecord
  validates :city, uniqueness: { scope: :country }
end
