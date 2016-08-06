class ShipmentsController < ApplicationController

  def show
    @shipment = Shipment.find params[:id]
  end

  def new
    @shipment = Shipment.new hospital_number: params[:hospital_number]
  end

  def create
    @shipment = Shipment.new shipment_params
    if @shipment.save
      flash[:success] = "New shipment record created"
      redirect_to @shipment
    else
      # TODO: handle failure and error notifictions
    end
  end


  private

  def shipment_params
    params.require(:shipment).permit!
  end

end
