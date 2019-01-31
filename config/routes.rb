Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :members
      resources :coupons
      resources :events
      resources :likes
      resources :plans
    end
  end

end
