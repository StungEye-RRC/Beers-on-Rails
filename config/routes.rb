Rails.application.routes.draw do
  resources :beers, only: [:index, :show]

  get 'search_results', to: 'search#results', as: 'search_results'

  root to: 'beers#index'
end
