class UsersController < ApplicationController

    def new 
        @user = User.new 
    end 

    @post = Post.new(post_params)
 
    if @post.save
      redirect post_path(@post)
    else
      render :new
    end

    def create 
        @user = User.new(user_params)
        if params[:user][:password] === params[:user][:password_confirmation]
            if @user.save
            session[:user_id] = @user.id
            redirect_to users_path 
            else 
            render :new 
            end 
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
        params.require(:user).permit(:email, :password_digest, :password_confirmation)
    end 
end

