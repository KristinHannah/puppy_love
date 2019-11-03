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


    private

    def require_login 
        return head(:forbidden) unless session.include? :user_id
    end 


end
