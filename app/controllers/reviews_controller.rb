class ReviewsController < ApplicationController
  before_action :set_place, only: %i[new index create]
  def new
    # We need @place in our `simple_form_for`
    @review = Review.new
    @place = Place.find(params[:place_id])
  end

  def index
    @place = Place.find(params[:place_id])
    @reviews = Review.all
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @place = Place.find(params[:place_id])
    @review.place = @place
    @review.user = current_user

    if @review.save
      render json: success_response
      redirect_to places_path(@place)
    else
      render json: failure_response
    end
  end

  def show
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to places_path(@review.place), status: :see_other
  end

  private

  def set_place
    @place = Place.find(params[:place_id])
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
