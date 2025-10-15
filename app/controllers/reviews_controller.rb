class ReviewsController < ApplicationController
  def new
    @reviews = @restaurant.review.all
    @review = @restaurant.review.new
  end
end
