class ReservationsController < ApplicationController

  def new
    @reservation = Reservation.new
  end

  def create
    @listing = Listing.find_by_id(params[:listing_id])
		@reservation = Reservation.new(reservation_params)
    @reservation[:user_id] = current_user[:id]
    @listing.reservations << @reservation
    if @reservation.save
      flash[:success] = "Your reservation has been reserved"
      redirect_to listing_path(@listing)
    else
      flash[:notice] = "Your reservation could not be created: #{@reservation.errors.full_messages.join(', ')}."
      redirect_to "/"
    end
  end

  def show
    @reservation.user_id = current_user.id
    @reservation.listing_id = @listing.id
    @reservation.save
  end

  private

  def reservation_params
    params.require(:reservation).permit(:date, :start_time, :end_time, :listing_id)
  end
end
