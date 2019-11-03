class AttsTablesController < ApplicationController
    before_action :require_login

    def new 
        @atts_table = AttsTable.new 
    end 

    def create 
        @atts_table = AttsTable.create(atts_table_params)
        @atts_table.user_id = session[:user_id]
        @atts_table.save 
        redirect_to atts_table_path(@atts_table)
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


