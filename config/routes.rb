Rails.application.routes.draw do

  resources :cocktails do
    resources :doses, only: [:new, :create, :index, :destroy]
  end

  # resources :doses, only: [:destroy]
  delete 'doses/:id', to: 'doses#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'cocktails#index'
end
