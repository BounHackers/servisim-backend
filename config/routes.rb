# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :routes
      resources :drivers
      resources :schools
      resources :kids
      resources :parents
      post 'parents/login' => 'parents#login'
      post 'kids/login' => 'kids#login'
      post 'drivers/login' => 'drivers#login'
      get 'mercedes/authorize' => 'mercedes#authorize'
      get 'mercedes/callback' => 'mercedes#callback'
      get 'mercedes/refresh' => 'mercedes#refresh'
      get 'mercedes/vehicles' => 'mercedes#vehicles'
      get 'mercedes/vehicle_info/:id' => 'mercedes#vehicle_info'
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
