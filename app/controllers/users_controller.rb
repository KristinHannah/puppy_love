class UsersController < ApplicationController

    def new 
        @user = User.new 
    end 

    def create 
        @user = User.new 
        if params[:user][:password] === params[:user][:password_confirmation]
            @user = User.create(user_params)
            session[:user_id] = @user.id
            redirect_to root_path 
        else 
            render :new 
        end 
    end 

    def index 
        @user = User.find(session[:user_id])
    end 
    
    private 

    def user_params
        params.require(:user).permit(:email, :password_digest, :password_confirmation)
    end 
end
