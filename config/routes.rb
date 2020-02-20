Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/cocktails', to: 'cocktails#index', as: :cocktails
  get '/cocktails/new', to: 'cocktails#new', as: :cocktails_new
  get '/cocktails/:cocktail_id', to: 'cocktails#show', as: :cocktail
  post '/cocktails', to: 'cocktails#create'
  get '/cocktails/:cocktail_id/doses/new', to: 'doses#new', as: :new_cocktail_dose
  post 'cocktails/:cocktail_id/doses', to: 'doses#create', as: :cocktail_doses
end
