class UsersController < ApplicationController
  
    def create
        user = User.create!(production_params)
        render json: user, status: :created
    end 

    private

    def production_params
        params.permit(:name, :email)
    end 

   

end
