class ReviewsController < ApplicationController
  before_action :set_restaurant

  def index
    @reviews = @restaurant.reviews.includes(:restaurant)
  end

  def new
    @review = @restaurant.reviews.new
  end

  def create
    @review = @restaurant.reviews.new(review_params)
    if @review.save
      redirect_to @restaurant
    else
      render :new
    end
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end

end
