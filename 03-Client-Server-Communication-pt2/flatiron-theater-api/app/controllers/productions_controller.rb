class ProductionsController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity
    def index 
        productions = Production.all
        render json: productions
    end 

    def show
        production = Production.find(params[:id])
        render json: production
    end 

    def create
        production = Production.create!(production_params)
        render json: production, status: :created
        # if production.valid?
        #     render json: production, status: :created
        # else
        #     render json: {errors: production.errors.full_messages }, status: :unprocessable_entity 
        # end 
    end 

    private 

    def production_params
        params.permit(:title, :genre, :description, :budget, :image, :director, :ongoing, :id)
    end 

    def render_unprocessable_entity(invalid)
        render json: {errors: invalid.record.errors}, status: :unprocessable_entity 
    end 
end
