class SessionsController < ApplicationController
    #logging a user in/out, omniauth
    
    #Team Form Getter
    def new 
        @user = User.new
        render :login
    end
    #Team form Getter
    def login 
    end

    def home
        
    end

    def create #creating a session

        @user = User.find_by(username: params[:username])
        #  @user = User.find_by(email: params[:email])
        
        #binding.pry            
        if  @user && @user.authenticate(params[:password])
            session[:user_id] = @user.id
            #binding.pry  #  Final Check!! 👀
            redirect_to user_path(@user)
            else
                redirect_to login_path        #  redirect_to login_path
        end
    end

    def destroy 
        session.clear
        redirect_to '/'
    end

    def omniauth
    user = User.create_from_omniauth(auth)
        if user.valid?
            session[:user_id] = user.id
            redirect_to 'show'
        else
            flash[:message] = user.errors.full_messages.join(", ")
            redirect_to 'users'
        end
    end

    private
    def auth
        request.env['omniauth.auth']
    end
end
