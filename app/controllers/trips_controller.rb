class TripsController < ApplicationController
    def index
        @trips = Trip.all
    end

    def new #gets the form
        @user = current_user
        @trip = @user.trips.build
        # 3.times do
        #     d = @trip.destination.build
        #     d.build_destination
        # end
    end

    def create #posts the form
        @user = current_user
        @trip = @user.trips.build(trip_params)
        if @trip.save
           
            # redirect_to trip_path(@trip)
            redirect_to user_trip_path(@user, @trip)
        else
            binding.pry
            render 'new'
        end
    end

    def trip_params
        params.require(:trip).permit(:name, :user_id, :destination_id, :destination)
    end
end
