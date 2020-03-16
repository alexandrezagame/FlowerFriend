class BookingsController < ApplicationController
  def new
    @flower = FLower.find(params[:flower_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @flower = FLower.find(params[:flower_id])
    @booking.flower = @flower

    if @booking.save
      redirect_to flower_path(@flower)
    else
      render :new
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to flower_path(@booking.flower)
  end
end

  private
  def booking_params
    params.require(:booking).permit(:total_price, :start_date,:end_date, :user_id)
  end
end
