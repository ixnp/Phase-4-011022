class ProductionRolesController < ApplicationController
    def index 
        production_roles = ProductionRole.all
        render json: production_roles
    end 

    def show
        production_role = ProductionRole.find(params[:id])
        render json: production_role
    end 
end
