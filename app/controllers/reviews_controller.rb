class ReviewsController < ApplicationController
  # before_action :set_review, only: %i[show edit] # [:show, :edit] but rubocop koi

  def index
    @reviews = Review.all
  end

  def show
    @review = Review.new(params[:id])
  end

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review.restaurant = @restaurant

    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  private

  # def set_review
  #   id = params[:id]
  #   @review = Review.find(id)
  # end

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
