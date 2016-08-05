class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  include SessionHelper

  def index
  end

  def specify_hospital_number
    self.current_hospital_number = params[:hospital_number]
    flash.now[:success] = "Hospital number #{current_hospital_number} selected"
    render action: :index
  end

end
