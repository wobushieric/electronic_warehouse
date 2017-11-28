Rails.application.routes.draw do

  get 'cust_address/index'

  get 'cust_address/new'

  get 'cust_address/update'

  get 'cust_address/delete'

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
