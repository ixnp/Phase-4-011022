Rails.application.routes.draw do
  # resources :production_roles
  resources :productions, only: [:index, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get '/productions', to: 'productions#index'
end
