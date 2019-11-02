class SessionsController < ApplicationController 

    def new 
        params.permit!
    end 

    def create 
        params.permit!

        if auth_hash = request.env["omniauth.auth"]
            #logged in via facebook
            oauth_email = request.env["omniauth.auth"]["email"]
            if user = User.find_by(:email => oauth_email)
                session[:user_id] = user.id
            else 
                user = User.create(:email => oauth_email)
                session[:user_id] = user.id
            end 
        else 
            #logged in normal
         user = User.find_by(:email => params[:email])
            if user && user.authenticate(params[:password_digest])
                session[:user_id] = user.id 

                redirect_to root_path
            else 
                render '/login'
            end 
         end 
    end 

    def destroy         
        session.delete :email 
        redirect_to '/login'
    end 

end 

