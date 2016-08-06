Rails.application.routes.draw do

  resources :shipments do
    member do
      get :data_entry
    end
  end

  root to: "application#index"

  post "specify_hospital_number", to: "specify_hospital_number", controller: :application

end
