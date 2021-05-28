class ReviewsController < ApplicationController
  def index
    response = HTTP.get("https://api.nytimes.com/svc/movies/v2/reviews/search.json?query=#{params[:search]}&api-key=WjfxfGsEwbMcQ7ZJFAobbKpaK4ZReP1q")
    key = nyt.access_key
    render json: key
  end
end
