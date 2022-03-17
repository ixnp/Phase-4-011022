class UsersController < ApplicationController
    def index 
        user = User.all
        render json: user
    end 

    def show
        user = User.find(params[:id])
        render json: user
    end 
    def create
        user = User.create!(production_params)
        render json: user, status: :created
    end 

    private

    def production_params
        params.permit(:name, :email)
    end 

   

end
