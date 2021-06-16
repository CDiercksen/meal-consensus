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

    def show
        @destination = Destination.find_by_id(params[:id])
        # @user = User.find_by_id(current_user)
    end

    private

    def destination_params
        params.require(:destination).permit(:name)
    end
end
