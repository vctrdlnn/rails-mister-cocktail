Rails.application.routes.draw do
  resources :cocktails
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'cocktails#index'
end
