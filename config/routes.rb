Rails.application.routes.draw do

  resources :shipments do
    member do
      get   :data_entry
      patch :save_isolate_data
    end
  end

  root to: "application#index"

  post "specify_hospital_number", to: "specify_hospital_number", controller: :application

  get "/reports/hospital_stats", to: "reports#hospital_stats"

end
