# frozen_string_literal: true

require 'csv'
# parent class
class ImportService
  def initialize(file)
    @file = file
  end

  private

  attr_accessor :file
end
