class TripsController < ApplicationController
    def index
        @trips = Trip.all
    end

    # def new
    #     @trip = Trip.new
    #     @trip.build_category
    #     3.times do
    #         d = @trip.destination.build
    #         d.build_destination
    #     end
    # end

    # def create
    #     @trip = Trip.new(trip_params)
    #     if @trip.save
    #         redirect_to trip_path(@trip)
    #     end
    # end

    # def trip_params
    #     params.require(:trip).permit(:name, :user_ids:[], :destination_id, :restaurant_ids[])
    # end
end
