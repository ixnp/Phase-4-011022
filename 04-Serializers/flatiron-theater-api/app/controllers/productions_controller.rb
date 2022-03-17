class ProductionsController < ApplicationController
    def index 
        productions = Production.all
        render json: productions, include: ['users', 'users.tickets'], status: :ok
        # render json: productions, include: [:production_roles, users: {only:[:name]}], except: [:created_at, :updated_at]
    end 

    def show
        production = Production.find(params[:id])
        render json: production
        # render json: production, include: [:production_roles, users: {only:[:name]}]
    end 

    def create
        production = Production.create!(production_params)
        render json: production, status: :created
    end 

    def update
        production = Production.find(params[:id])
        production.update!(production_params)
        render json: production, status: :ok
    end 

    def destroy
        production = Production.find(params[:id])
        production.destroy
        head :no_content 
    end 


    private 

    def production_params
        params.permit(:title, :genre, :description, :budget, :image, :director, :ongoing, :id)
    end 


end
