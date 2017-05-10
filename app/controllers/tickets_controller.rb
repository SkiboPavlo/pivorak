class TicketsController < ApplicationController
  before_action :load_ticket, only: [:edit, :update, :destroy, :show]

  def index
    @trip = Trip.find params[:trip_id]
    @tickets = @trip.tickets
  end

  def new
    trip = Trip.find params[:trip_id]
    @ticket = trip.ticket.build
  end

  def edit
  end

  def show
  end

  def create
    trip = Trip.find params[:trip_id]
    @ticket = trip.tickets.build(ticket_params)
    if @ticket.save
      redirect_to trip_tickets_path
    else
      flash[:errors] = @ticket.errors.messages
      render :new
    end
  end

  def update
    if @ticket.update_attributes(ticket_params)
      redirect_to trip_tickets_path(@ticket.trip)
    else
      flash[:errors] = @ticket.errors.messages
      render :edit
    end
  end

  def destroy
    @ticket.destroy
    redirect_to trip_ticketss_path(@ticket.trip)
  end

  private

  def load_ticket
    @ticket = Ticket.find params[:id]
    render :file => "#{Rails.root}/public/404.html", :status => 404 unless @ticket
  end

  def ticket_params
    params.require(:ticket).permit(:number, :trip_id)
  end
end
