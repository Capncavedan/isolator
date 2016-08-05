class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def index
  end

  def specify_hospital_number
    @hospital_number = params[:hospital_number]
    flash.now[:success] = "Hospital number #{@hospital_number} specified"
    render action: :index
  end

end
