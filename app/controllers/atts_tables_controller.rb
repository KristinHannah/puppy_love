class AttsTablesController < ApplicationController
    before_action :require_login

    def new 

    end 

    def create 

    end 

    def show 

    end

    private 

    def require_login 
        return head(:forbidden) unless session.include? :user_id
    end 

    def atts_table_params 
        params.require(:atts_table).permit(:apartment_friendly, :hypoallergenic, :pet_friendly, :noise, :user_id)
    end 
end


