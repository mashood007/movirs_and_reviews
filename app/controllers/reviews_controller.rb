# frozen_string_literal: true

# Reviews actions
class ReviewsController < ApplicationController
  def index
    @reviews = Review.group(:stars).select(:stars, 'COUNT(*) as total').order(:total)
    @average_review = Review.average(:stars).round(2)
  end

  def import
    service = ImportReviewsService.new(params[:file])
    @result = service.call
  end
end
