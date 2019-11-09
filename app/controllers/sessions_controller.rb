class SessionsController < ApplicationController 

    def new 
        params.permit!
    end 

    def create 
        params.permit!
       # user_info = request.env['omniauth.auth']
        if  auth_hash = request.env['omniauth.auth']
            #logged in via facebook
            user = User.find_or_create_by_omniauth(auth_hash)
            session[:user_id] = user.id 

            redirect_to users_path
        else 
            #logged in normal
         user = User.find_by(:email => params[:user][:email])
            if user && user.authenticate(params[:user][:password])
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

