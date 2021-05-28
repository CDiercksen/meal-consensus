class SessionsController < ApplicationController
    #logging a user in/out, omniauth
    
    #Team Form Getter
    def new 

    end
    #Team form Getter
    def login 
    end

    def create #creating a session

    end

    def destroy 

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
