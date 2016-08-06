Rails.application.routes.draw do

  resources :shipments

  root to: "application#index"

  post "specify_hospital_number", to: "specify_hospital_number", controller: :application

end
