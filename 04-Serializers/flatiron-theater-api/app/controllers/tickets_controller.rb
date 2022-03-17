class TicketsController < ApplicationController
#Review: Index Action
def index 
    render json: Ticket.all
end 
#Review: Show Action
def show
    ticket = Ticket.find(params[:id])
    render json: ticket, status: :ok, serializer:TicketProductionSerializer
end 
#Review: Create action 
def create
    ticket = Ticket.create!(ticket_params)
    render json: ticket
end 
#Review: Update action 
def update
    ticket = Ticket.find(params[:id])
    ticket.update!(ticket_params)
    render json: ticket
end 
#Review: Destroy action 
def destroy
    ticket = Ticket.find(params[:id])
    ticket.destroy
    head :no_content
end 

#Review: Strong params
private

def ticket_params
    params.permit(:price, :user_id, :production_id)
end 

end
