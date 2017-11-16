Rails.application.routes.draw do
  get 'about_us', to: 'employee#index'

  get 'employeesdata', to: 'employee#test'

  get 'home_product', to: 'product#home'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
