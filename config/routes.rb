Rails.application.routes.draw do

  resources :cocktails do
    resources :doses, only: [:new, :create, :index, :destroy]
  end

  # resources :doses, only: [:destroy]
  # delete 'cocktail_dose', to: 'doses#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'cocktails#index'
end
