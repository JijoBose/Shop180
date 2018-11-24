Rails.application.routes.draw do
  resources :products
  # devise_for :users
  devise_for :users, :controllers => { registrations: 'registrations' }
  get 'welcome_pages/index'
  get 'welcome_pages/show'
  root 'welcome_pages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
