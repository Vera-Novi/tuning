class TransportsController < ApplicationController
  def home
    @transports = Transport.all
  end

  def show
    @transport = Transport.find(params[:id])
  end

  def new
    @transport = Transport.new
  end

  def create
    @transport = Transport.new(transport_params)
    @transport.user_id = current_user.id
    if @transport.save
      redirect_to transport_path(@transport)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @transport = Transport.find(params[:id])
    @transport.destroy
    redirect_to root_path, status: :see_other
  end

  private

  def transport_params

    params.require(:transport).permit(:brand, :horse, :year, :price, :user_id, photos: [])

  end
end
