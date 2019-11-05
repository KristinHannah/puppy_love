class UsersController < ApplicationController

    def new 
        @user = User.new 
    end 

    def create 
        @user = User.new 
        if params[:user][:password] === params[:user][:password_confirmation]
            @user = User.create(user_params)
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
        params.require(:user).permit(:email, :password_digest, :password_confirmation, :name, :city, atts_table_attributes: [
            :apartment_friendly,
            :pet_friendly,
            :hypoallergenic,
            :noise,
            :cold_weather,
            :size
          ])
    end 
end

