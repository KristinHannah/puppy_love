class SessionsController < ApplicationController 

    def new 
        params.permit!
    end 

    def create 
        params.permit!
        user = User.find_by(:email => params[:email])
        if user && user.authenticate(params[:password_digest])
            session[:user_id] = user.id 

            redirect_to root_path
        else 
            render '/login'
        end 
    end 

    def destroy         
        session.delete :email 
        redirect_to '/login'
    end 

end 

