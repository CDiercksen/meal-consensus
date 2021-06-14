class DestinationsController < ApplicationController
    def index
        @destinations = Destination.organize
    end
    
    def new
        @destination = Destination.new
        # binding.pry
    end

    def create
        @destination = Destination.new(destination_params)
        if @destination.save
            redirect_to destinations_path
        else
            render 'new'
        end
    end

    private

    def destination_params
        params.require(:destination).permit(:name)
    end
end
