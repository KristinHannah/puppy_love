class AttsTablesController < ApplicationController
    before_action :require_login

    def new 
        @atts_table = AttsTable.new 
    end 

    def create 
        @atts_table = AttsTable.create(atts_table_params)
        user = User.find(session[:user_id])
        @atts_table.user_id = user.id 
        user.assign_atts(@atts_table)
        user.save 
        redirect_to atts_table_path(@atts_table)
    end 

    def show 
        @atts_table = AttsTable.find(params[:id])
    end

    private 

    def require_login 
        return head(:forbidden) unless session.include? :user_id
    end 

    def atts_table_params 
        params.require(:atts_table).permit(:id, :apartment_friendly, :hypoallergenic, :pet_friendly, :noise, :user_id)
    end 
end


