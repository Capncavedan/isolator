class ShipmentsController < ApplicationController

  def index
  end

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

  def update
    @shipment = Shipment.find params[:id]
    @shipment.attributes = shipment_params
    if @shipment.save
      flash[:success] = "Shipment updated - 25 isolate entries saved"
      redirect_to "/shipments"
    else
      # TODO: handle failure and error notifictions
    end
  end

  def data_entry
    @shipment = Shipment.find params[:id]
    1.times do  # TODO: make this the "right" number of times
      @shipment.isolates.build
    end
  end


  private

  def shipment_params
    params.require(:shipment).permit!
  end

end
