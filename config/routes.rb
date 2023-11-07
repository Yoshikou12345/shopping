Rails.application.routes.draw do
  resources :products, only: [:index]
  resource :cart, only: [:show] do
    post 'add_to_cart'
    delete 'remove_from_cart/:cart_item_id', to: 'carts#remove_from_cart', as: 'remove_from_cart'
  end
  root 'products#index'
end
