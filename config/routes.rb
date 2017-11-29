Rails.application.routes.draw do

  get 'charge/new', to: 'charge#new'

  get 'charge/charge'

  get 'user_centre', to: 'cust_address#index'

  get 'user_centre/new_address', to: 'cust_address#new'

  post 'user_centre/new_address', to: 'cust_address#creat'

  get 'user_centre/update_address', to: 'cust_address#edit'

  post 'user_centre/update_address', to: 'cust_address#update'  

  get 'user_centre/delete_address', to: 'cust_address#delete'

  devise_for :users
  root :to => 'product#home'

  get 'about_us', to: 'employee#index'

  get 'employeesdata', to: 'employee#test'

  get 'home', to: 'product#home'

  get 'products', to: 'product#products'

  get 'products/:category_id', to: 'product#products'

  get 'details/:product_id', to: 'product#details', as: 'product_details'

  get 'cart', to: 'cart#index'

  get 'cart/:product_id/:qty', to: 'cart#add_remove', as: 'update_cart'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
