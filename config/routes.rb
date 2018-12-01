Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :routes
      resources :drivers
      resources :schools
      resources :kids
      resources :parents
      post "parents/login"  => "parent#login"
      post "kids/login"  => "kid#login"
      post "drivers/login"  => "driver#login"
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
