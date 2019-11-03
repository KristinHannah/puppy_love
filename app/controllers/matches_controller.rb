class MatchesController < ApplicationController
    before_action :require_login

    def index 

    end 

    def new 

    end 

    def create
        params.permit!
        params(:user_id)
    end 

    

    private

    def require_login 
        return head(:forbidden) unless session.include? :user_id
    end 


end
