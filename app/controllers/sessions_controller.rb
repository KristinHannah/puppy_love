class SessionsController < ApplicationController 

    def new 
        params.permit!
    end 

    def create 
        params.permit!
        user_info = request.env['omniauth.auth']
        if  user_info = request.env['omniauth.auth']
            #logged in via facebook
            oauth_email = request.env["omniauth.auth"]["info"]["email"]
            if user = User.find_by(:email => oauth_email)
                session[:user_id] = user.id
                redirect_to root_path
            else 
                user = User.new(:email => oauth_email)
                session[:user_id] = user.id
                redirect_to root_path 
            end 
        else 
            #logged in normal
         user = User.find_by(:email => params[:email])
            if user && user.authenticate(params[:password])
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

