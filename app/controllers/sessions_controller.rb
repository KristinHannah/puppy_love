class SessionsController < ApplicationController 

    def new 
        params.permit!
    end 

    def create 
        params.permit!
        if  auth_hash = request.env['omniauth.auth']
            #logged in via facebook
            user = User.find_or_create_by_omniauth(auth_hash)
            session[:user_id] = user.id 

            redirect_to users_path
        else 
            #logged in normal
         user = User.find_by(:email => params[:email])
            if user && user.authenticate(params[:password])
                session[:user_id] = user.id 

                redirect_to users_path
            else 
                render '/sessions/new'
            end 
         end 
    end 

    def destroy         
        session.delete :email 
        redirect_to '/login'
    end 

  
end 

