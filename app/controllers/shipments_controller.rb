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

  def data_entry
    @shipment = Shipment.find params[:id]
    # TODO: make this the "right" number of times
    3.times do
      @shipment.isolates.build
    end
  end


  private

  def shipment_params
    params.require(:shipment).permit!
  end

end
