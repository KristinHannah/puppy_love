class MatchesController < ApplicationController
    before_action :require_login

    def index 

    end 

    def new 

    end 

    def create
        params.permit!
        user = User.find(params[:user_id])
        matches = user.matcher 
        Match.match_creater(user.id, matches)
        redirect_to root_path
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
        @match = Match.find(params[:id])
        @match.delete 
    end 


    private

    def require_login 
        return head(:forbidden) unless session.include? :user_id
    end 


end
