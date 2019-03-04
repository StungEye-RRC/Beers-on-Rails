Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :beers, only: [:index, :show]

  get 'search_results', to: 'search#results', as: 'search_results'

  root to: 'beers#index'
end
