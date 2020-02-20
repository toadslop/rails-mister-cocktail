Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'pages#home'
  get '/cocktails/', to: 'cocktails#index', as: :cocktails
  get '/cocktails/new', to: 'cocktails#new', as: :cocktails_new
  get '/cocktails/:cocktail_id', to: 'cocktails#show', as: :cocktail
  post '/cocktails', to: 'cocktails#create'
  delete '/cocktails/:cocktail_id', to: 'cocktails#destroy'
  post '/cocktails/:cocktail_id/doses', to: 'doses#create', as: :cocktail_doses
  delete 'doses/:dose_id', to: 'doses#destroy', as: :dose
end
