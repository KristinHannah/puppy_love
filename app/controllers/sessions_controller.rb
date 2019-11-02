class SessionsController < ApplicationController 

    def new 
        params.permit!
    end 

    def create 
        params.permit!
        if params[:user][:email].nil? || params[:user][:email] == ''
            redirect_to '/login'
        else 
            @user = User.find_by(email: params[:user][:email])
            return head(:forbidden) unless @user.authenticate(params[:user][:password_digest])
            session[:user_id] = @user.id
        end 
    end 

    def destroy         
        session.delete :name 
    end 

end 

