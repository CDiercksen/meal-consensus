class DestinationsController < ApplicationController
    def index
        @destinations = Destination.organize
        binding.pry
    end

    def new
        @destination = Destination.new
    end

    def create
        @destination = Destination.new(destination_params)
        @destination.save
        redirect_to destinations_path
    end

    private

    def destination_params
        params.require(:destination).permit(:name)
    end

end
