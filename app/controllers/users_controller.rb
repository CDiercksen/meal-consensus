class UsersController < ApplicationController
    def index
        @users = User.all
    end

    def show
        @user = User.find_by_id(params[:id])
    end

    def new
        @user = User.new 
    end

    def create
        
        @user = User.new(user_params)
        #binding.pry

        # Can Only Save If Valid
        if @user.save
            session[:user_id] = @user.id
                #binding.pry  #  Final Check!! 👀
            redirect_to user_path(@user)    #  /user/:id
        else
            render :new
        end

    end

    def edit

    end

    def update

    end

    def user_params
        params.require(:user).permit(:name, :username, :password,
            :celiac, :adventurous)
    end
end
