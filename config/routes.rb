Rails.application.routes.draw do
  resources :sign_ups
  root 'sign_ups#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
