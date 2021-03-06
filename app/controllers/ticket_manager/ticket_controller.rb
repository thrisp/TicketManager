module TicketManager
  class TicketController < ApplicationController
    respond_to :html

    def show
      @ticket = Ticket.first(:slug=>params[:id])
      @comments = @ticket.ticket_comments.all
      respond_with @ticket
    end

    def create
      #@aa = params[:ticket]
      #redirect_to :back if @aa
      #Ticket.create(params[:ticket])
      #redirect_to :back
      newticket = Ticket.create(params[:ticket])
      respond_with(newticket, :locations => ticket_path(newticket))
    end

  end
end
