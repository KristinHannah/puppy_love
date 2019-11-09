class UsersController < ApplicationController
    skip_before_action :verify_authenticity_token

    def new 
        @user = User.new 
    end 

    def create 
        @user = User.create(user_params)
        if @user.save
            session[:user_id] = @user.id
            redirect_to users_path 
        else 
            render :new 
        end 
    end 

    def index 
        @user = User.find(session[:user_id])
    end 

   # def edit 
   #     @user = User.find(params[:id])
    #    @user.build_atts_table
    #end
#
   # def update 
   #     @user = User.find(params[:id])
   #     @user.update(user_params)
   #     @user.save
   #     redirect_to users_path
   # end 
    
    private 

    def user_params
        params.require(:user).permit(:email, :password, :password_confirmation)
    end 
end

