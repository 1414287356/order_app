Rails.application.routes.draw do
  devise_for :users
  root to: 'menus#index'
  resources :menus
    scope module: :menus do
      resources :add_to_carts, only:[:create]
      resources :delete_in_carts, only:[:create]
    end

  resource :cart, only:[:show]
end
