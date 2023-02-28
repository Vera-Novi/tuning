class TransportsController < ApplicationController
  def home
  end

  def new
    @transport = Transport.new
  end

  def create
    @transport = Transport.new(transport_params)
  end

  private

  def transport_params
    params.require(:transport).permit(:brand, :horse, :year, :user_id)
  end
end
