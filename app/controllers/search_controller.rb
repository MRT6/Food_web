class SearchController < ApplicationController
  def index
    # @restaurants = Restaurant.all
  end

  def show
    # @restaurants = Restaurant.find(params[:id])
  end

  def results
    render "results"
    
  end

  def new

  end

end