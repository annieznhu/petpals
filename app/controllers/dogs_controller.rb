class DogsController < ApplicationController
  def index
    @dogs = Dog.all
  end

  def distance_between

    start_address = @dog.start_address
    current_address = current_user.dog.address

    start_address_coordinates = start_address.coordinates
    current_address_coordinates = current_address.coordinates

    return distance = Geocoder::Calculations.distance_between(start_address_coordinates, current_address_coordinates)

#   fetchCoordonates(event) {
#     event.preventDefault();
#     const query = this.formInputTarget.value;
#     fetch(`https://api.mapbox.com/geocoding/v5/mapbox.places/${query}.json?access_token=pk.eyJ1IjoiYm91dWRpb3V1IiwiYSI6ImNsNm93cTJtajBmMGwzaXFvbm5kZHNvOW4ifQ.-xGB_3P3B7tViVXVj76PLw`)
#       .then(response => response.json())
#       .then((data) => {
#         this.latitudeTarget.innerText = data.features[0].geometry.coordinates[1];
#         this.longitudeTarget.innerText = data.features[0].geometry.coordinates[0];
#         mapboxgl.accessToken = "pk.eyJ1IjoiYm91dWRpb3V1IiwiYSI6ImNsNm93cTJtajBmMGwzaXFvbm5kZHNvOW4ifQ.-xGB_3P3B7tViVXVj76PLw";
#         const map = new mapboxgl.Map({
#           container: "map",
#           style: "mapbox://styles/mapbox/streets-v9",
#           center: [this.longitudeTarget.innerText, this.latitudeTarget.innerText],
#           zoom: 12
#         });
#         new mapboxgl.Marker()
#           .setLngLat([this.longitudeTarget.innerText, this.latitudeTarget.innerText])
#           .addTo(map);
#       });
#   }
# }

  end
end
