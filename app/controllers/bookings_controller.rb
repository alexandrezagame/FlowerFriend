class BookingsController < ApplicationController

  def index
    @bookings = Booking.all
  end

  def new
    @flower = Flower.find(params[:flower_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @flower = Flower.find(params[:flower_id])
    @booking.flower = @flower
    @booking.user = current_user

    if @booking.save
      redirect_to bookings_path
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date)
  end

end
