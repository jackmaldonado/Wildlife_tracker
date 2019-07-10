class SightingsController < ApplicationController
    def index
        @sightings = Sighting.all
            render json: @sightings
    end
   
    def show
        @sightings = Sighting.find(params[:id])
            render json: @sightings
    end
   
    def create
        @sightings = Sighting.create(sighting_params)
            render json: @sightings
    end
   
    def destroy
        Sighting.destroy(params[:id])
    end
   
    def update
        @sightings = Sighting.find(params[:id])
        Sighting.update!(sighting_params)
        redirect_to Sighting
    end
   
    def sighting_params
        params.require(:sightings).permit(:date, :longitude, :latitude)
    end
end
