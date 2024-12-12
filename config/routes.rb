Rails.application.routes.draw do
  root 'images#index'
  resources :images, only: [:index, :new, :create, :show]
  

  get "up" => "rails/health#show", as: :rails_health_check
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
end
