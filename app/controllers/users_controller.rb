class UsersController < ApplicationController

    def new 
        @user = User.new 
    end 

    def create 
        @user = User.new 
        @user.email = params[:user][:email]
        if @user.save 
            redirect_to root_path 
        else 
            render :new 
        end 
    end 

    private 

    def user_params(params)
        params.require(:user).permit(:email, :password_digest)
    end 
end
