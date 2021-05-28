class ReviewsController < ApplicationController
  def index
    response = HTTP.get("https://api.nytimes.com/svc/movies/v2/reviews/search.json?query=#{params[:search]}&api-key=#{Rails.application.credentials.nyt_api_key}")
  
    render json: response.parse(:json)
  end
end
