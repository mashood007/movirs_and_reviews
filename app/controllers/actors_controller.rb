# frozen_string_literal: true

# Actors actions
class ActorsController < ApplicationController
  def index
    @actors = Actor.search_by_name(params[:search])
  end
end
