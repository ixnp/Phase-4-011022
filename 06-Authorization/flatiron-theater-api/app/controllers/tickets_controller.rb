class TicketsController < ApplicationController
    def index
        tickets = Ticket.all 
        render json: tickets, status: :ok
    end 

    def show
        ticket = Ticket.find(params[:id])
        render json: ticket, status: :ok
    end 

    def create
        ticket = Ticket.create!(ticket_params)
        render json: ticket, status: :created
    end

    
    def update
        ticket = Ticket.find(params[:id])
        ticket.update!(ticket_params)
        render json: ticket, status: :ok
    end 


    def destroy
        ticket = Ticket.find(params[:id])
        ticket.destroy
        head :no_content
    end 
    
    private 
    def ticket_params
        params.permit(:production_id, :user_id, :price)
    end 
end
