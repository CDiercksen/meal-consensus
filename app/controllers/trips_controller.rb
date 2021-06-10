class TripsController < ApplicationController
    def index
        @trips = Trip.all
        # binding.pry
    end

    def new #gets the form
        @user = current_user
        @trip = @user.trips.build
        #@destination = Destination.new
        @destination = Destination.new 
        
        # 3.times do
        #     d = @trip.destination.build
        #     d.build_destination
        # end
    end

    def create #posts the form
        @user = current_user
        @trip = @user.trips.build(trip_params)
    #    binding.pry
        if @trip.save
            # @destination = Destination.new(destination_params)
            # @destination.save
            # @trip.destination_id = @destination.id
            # binding.pry
            redirect_to user_trip_path(@user, @trip)
        else
           # binding.pry
            render 'new'
        end
    end

    def show
        @trip = Trip.find_by_id(params[:id])
    end


    private

    def destination_params
        params.require(:destination).permit(:name)
    end

    def trip_params
        params.require(:trip).permit(:name, :user_id, :destination_id, destination_attributes: [:name])
    end
end
