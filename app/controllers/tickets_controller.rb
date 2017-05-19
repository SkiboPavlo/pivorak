class TicketsController < ApplicationController
  before_action :load_ticket, only: [:edit, :update, :destroy, :show, :buy, :reserve]

  def index
    @trip = Trip.find params[:trip_id]
    @tickets = @trip.tickets
  end

  def show
  end

  def create
    trip = Trip.find params[:trip_id]
    @ticket = trip.tickets.build(ticket_params)

    respond_to do |format|
      if @ticket.save
        format.html {redirect_to trip_ticket_path(@ticket.trip, @ticket), notice: "Ticket was successfully created"}
        format.json {render :show, status: :created, location: @ticket}
      else
        format.html {render :new}
        format.json {render json: @ticket.errors, status: :unprocessable_entity}
      end
    end
  end

  def destroy
    @ticket.destroy
    redirect_to trip_tickets_path(@ticket.trip)
  end

  def buy
    if @ticket.status == 'buy'
      flash[:notice] = "You can not buy this ticket, because it has already been purchased"
      redirect_to trip_tickets_path(@ticket.trip, @ticket)
    else
      @ticket.status = "buy"
      @ticket.user_id = current_user.id
      @ticket.save
      redirect_to trip_ticket_path(@ticket.trip, @ticket)
    end
  end

  def reserve
    if @ticket.status == "available"
      @ticket.status = "reserve"
      @ticket.user_id = current_user.id
      @ticket.save
      redirect_to trip_ticket_path(@ticket.trip, @ticket)
    else
      flash[:notice] = "You can not reserve buyed ticket"
      redirect_to trip_tickets_path(@ticket.trip, @ticket)
    end
  end

  private

  def load_ticket
    @ticket = Ticket.find params[:id]
    render :file => "#{Rails.root}/public/404.html", :status => 404 unless @ticket
  end

  def ticket_params
    params.require(:ticket).permit(:number, :trip_id, :status, :price, :user_id)
  end
end
