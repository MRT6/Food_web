require 'open-uri'
require 'json'

class ApiController < ApplicationController
  def restaurants_form
  end

  def show_results
    # raise params["restaurants"].inspect
    # preprocesses form info
    restaurant = URI.encode(params["restaurant"])

    # dynamically generates URL
    
    url = "https://api.nutritionix.com/v1_1/brand/search?query=#{restaurant}&type=1&min_score=1&appId=5b499a24&appKey=e67f33ad214474282ce9f1767babbf27"
    # url = "http://api.openweathermap.org/data/2.5/weather?q=#{address}"

    # saves information at the generated URL
    initial_info = open(url).read
   

    # converts the result into Ruby hashes and arrays
    @parsed_info = JSON.parse(initial_info)
    # raise @parsed_info.inspect
    @result = @parsed_info["hits"]
    
  end
end