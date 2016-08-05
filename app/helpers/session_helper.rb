module SessionHelper

  def current_hospital_number
    session[:current_hospital_number]
  end

  def current_hospital_number=(number)
    session[:current_hospital_number] = number
  end

end
