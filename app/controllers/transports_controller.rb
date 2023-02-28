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
<<<<<<< HEAD
=======
    @transport.user_id = current_user.id
    if @transport.save
      redirect_to transport_path(@transport)
    else
      render :new, status: :unprocessable_entity
    end
>>>>>>> 70ae070707471452c27356031f1eb24e55d50884
  end

  private

  def transport_params
    params.require(:transport).permit(:brand, :horse, :year, :user_id)
  end
end
