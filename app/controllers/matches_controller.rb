class MatchesController < ApplicationController
    before_action :require_login

    def index 
        if params[:user_id]
            @matches = User.find(params[:user_id]).matches 
            @user = User.find(params[:user_id])
        else  
           @matches = User.find(session[:user_id]).matches
        end 
    end 

    def new 

    end 

    def create
        params.permit!
        user = User.find(params[:user_id])
        matches = user.matcher 
        Match.match_creater(user.id, matches)
        redirect_to users_path
    end 

    def show 
        @match = Match.find(params[:id])
    end 

    def edit 
        @match = Match.find(params[:id])
    end

    def update 
        @match = Match.find(params[:id])
        @match.comment_field = params[:match][:comment_field]
        @match.save
        redirect_to match_path(@match)
    end 

    def destroy 
        @match = Match.find(params[:id]).destroy
        redirect_to users_path
    end 


    private

    def require_login 
        return head(:forbidden) unless session.include? :user_id
    end 

    def match_params
        params.require(:match).permit(:comment_field, :user_id)
    end 
end
