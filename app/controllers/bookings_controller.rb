class BookingsController < ApplicationController

  def index
    if current_user.owner?
      @bookings = current_user.flower_shop.bookings
    else
      @bookings = Booking.where(user: current_user)
    end
  end

  def show
    @booking = Booking.find(params[:id])
    # bookings --> i need the flower id, flowershop id and user id
  end

  def new
    @flower = Flower.find(params[:flower_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @flower = Flower.find(params[:flower_id])
    @booking.flower = @flower
    @booking.booking_status = "pending"
    @booking.user = current_user

    if @booking.save
      redirect_to bookings_path
    else
      render :new
    end
  end

  def change_status_approve
    @booking = Booking.find(params[:id])
    @booking.booking_status = "Approved"
    @booking.save
    redirect_to bookings_path
  end
  def change_status_decline
    @booking = Booking.find(params[:id])
    @booking.booking_status = "Declined"
    @booking.save
    redirect_to bookings_path
  end

  private

  def booking_params
    params.require(:booking).permit(:pick_up_date)
  end

end
