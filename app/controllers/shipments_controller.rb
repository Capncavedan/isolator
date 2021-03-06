class ShipmentsController < ApplicationController

  def index
    @shipments = Shipment.all.order(id: :desc).paginate(page: params[:page], per_page: 25)
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
      p @shipment.errors
      # TODO: handle failure and error notifictions
    end
  end

  def edit
    @shipment = Shipment.find params[:id]
  end

  def update
    @shipment = Shipment.find params[:id]
    if @shipment.update_attributes shipment_params
      flash[:success] = "Shipment updated"
      redirect_to shipments_path
    else
      flash.now[:failure] = "Some validation errors prevented saving"
      render action: "edit"
    end
  end

  def save_isolate_data
    @shipment = Shipment.find params[:id]
    if @shipment.update_attributes shipment_params
      flash[:success] = "Shipment updated - #{isolate_count_saved} isolate entries saved"
      redirect_to shipments_path
    else
      flash.now[:failure] = "Some validation errors prevented saving"
      render action: "data_entry"
    end
  end

  def data_entry
    @shipment = Shipment.find params[:id]
    build_isolates
  end


  private

  def build_isolates
    required_additional_isolate_records.times do
      @shipment.isolates.build
    end
  end

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
