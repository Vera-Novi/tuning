class BookingsController < ApplicationController
  before_action :authenticate_user!, except: :home
  before_action :set_bookings, only: [:show, :edit, :update, :destroy]

  def new
    @booking = Booking.new
    @transport = Transport.find(params[:transport_id])
  end

  def show
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.transport = Transport.find(params[:transport_id])
    @booking.user_id = current_user.id
    @booking.save

    # No need for app/views/bookings/create.html.erb
    redirect_to booking_path(@booking)
  end

  def edit
  end

  def update
    if @booking.update(booking_params)
      redirect_to booking_path(@booking)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to transport_path(@booking.transport), status: :see_other
  end

  private

  def booking_params
    params.require(:booking).permit(:reservation_begin, :reservation_end, :user_id, :transport_id)
  end
  def set_bookings
    @booking = Booking.find(params[:id])
  end
end
