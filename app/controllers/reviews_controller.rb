class ReviewsController < ApplicationController
  before_action :set_olaces, only: %i[new create]
  def new
    # We need @place in our `simple_form_for`
    @place = Place.find(params[:place_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.place = @place
    if @review.save
      redirect_to places_path(@place)
    else
      render :new, status: :unprocessable_entity
    end
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
    params.require(:review).permit(:content)
  end
end
