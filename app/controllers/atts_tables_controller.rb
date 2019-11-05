class AttsTablesController < ApplicationController
    before_action :require_login

    def new 
        @atts_table = AttsTable.new(user_id: params[:user_id])
    end 

    def create 
        @atts_table = AttsTable.create(atts_table_params)
        redirect_to atts_table_path(@atts_table)
    end 

    def show 
        @atts_table = AttsTable.find(params[:id])
    end

    def destroy 
        @atts_table = AttsTable.find(params[:id])
        @user = User.find(@atts_table.user_id)
        @user.atts_table_id = nil 
        @user.save
        @atts_table.destroy

        redirect_to users_path
    end 


    private 

    def require_login 
        return head(:forbidden) unless session.include? :user_id
    end 

    def atts_table_params 
        params.require(:atts_table).permit(:id, :apartment_friendly, :hypoallergenic, :pet_friendly, :noise, :cold_weather, :size, :user_id)
    end 
end


