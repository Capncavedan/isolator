class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception

  include SessionHelper

  before_action :assign_body_css_classes

  def index
  end

  def specify_hospital_number
    assign_current_hospital_number
    build_hospital_number_flash_message
    redirect_to action: :index
  end


  private

  def assign_current_hospital_number
    self.current_hospital_number = nil
    if params[:hospital_number].present?
      self.current_hospital_number = params[:hospital_number]
    end
  end

  def build_hospital_number_flash_message
    if current_hospital_number
      flash[:success] = "Hospital number #{current_hospital_number} selected"
    else
      flash[:notice] = "Hospital number cleared"
    end
  end

  def assign_body_css_classes
    @body_css_classes = "#{params[:controller]} #{params[:action]}"
  end

end
