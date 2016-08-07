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
    if @shipment.update_attributes shipment_params
      flash[:success] = "Shipment updated - #{isolate_count_saved} isolate entries saved"
      redirect_to shipments_path
    else
      # TODO: handle failure and error notifictions
    end
  end

  def data_entry
    @shipment = Shipment.find params[:id]
    required_additional_isolate_records.times do
      @shipment.isolates.build
    end
  end


  private

  def isolate_count_saved
    @shipment.isolates.count
  end

  def required_additional_isolate_records
    total_expected = @shipment.isolate_quantity.to_i
    existing = @shipment.isolates.count
    total_expected - existing
  end

  def shipment_params
    params.require(:shipment).permit!
  end

end
