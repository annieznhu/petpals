class PlacesController < ApplicationController
  def index
    @places = Place.all
    @markers = @places.geocoded.map do |place|
      {
        lat: place.latitude,
        lng: place.longitude,
        info_window: render_to_string(partial: "info_window", locals: { place: place }),
        image_url: helpers.asset_url("pink-park.png")
      }
    end
  end

  def new
    @place = Place.new
  end

  def create
    @place = Place.new(place_params)

    if @place.save
      redirect_to places_path
    else
      render "places/new", status: :unprocessable_entity
    end
  end

  private

  def place_params
    params.require(:place).permit(:name, :address, :photo)
  end
end
