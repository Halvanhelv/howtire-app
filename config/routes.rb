# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'images#index'

  namespace :api do
    resources :images, only: [:update]
  end

  resources :folders
end
