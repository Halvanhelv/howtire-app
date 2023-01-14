Rails.application.routes.draw do
  root to: "images#index"

  namespace :api do
    resources :images, only: [:update]
  end
end
