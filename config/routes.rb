Rails.application.routes.draw do
  resources :categories
  devise_for :admins
  resources :products do
    collection do
      get "uncategorized", to: "products#uncategorized"
    end
    resource :buy_now, only: [ :show ], controller: :buy_now # controller adicionado para que não fique automaticamente no plural
  end
  resource :admin, only: [ :show ], controller: :admin

  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  root "products#index"
end
