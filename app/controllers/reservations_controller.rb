class ReservationsController < ApplicationController

  def new
    @reservation = Reservation.new
  end

  def create
		@reservation = current_user.reservations.create(reservation_params)
    @reservation.user_id = session[:user_id]
    if @reservation.save
      flash[:success] = "Your reservation \"#{@reservation.date}\" has been reserved"
      redirect_to listing_path(@listing)
    else
      flash[:notice] = "Your listing could not be created: #{@reservation.errors.full_messages.join(', ')}."
      redirect_to new_reservation_path
    end
  end

  def show
    @reservation = Reservation.find(params[:id])
  end
  private

  def reservation_params
    params.require(:reservation).permit(:date, :start_time, :end_time, :room_id)
  end
end
