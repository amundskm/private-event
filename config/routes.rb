Rails.application.routes.draw do
  root    'static#home'
  resources :users, only: [:create, :new, :show]
  resources :events
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
