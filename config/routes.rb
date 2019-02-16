Rails.application.routes.draw do
  root    'users#new'
  post    '/signup', to: 'users#create'
  get     '/login', to: 'sessions#new'
  post    '/login',   to: 'sessions#create'
  get     '/logout',  to: 'sessions#destroy'
  post     '/new_events', to: 'events#create'
  resources :users
  resources :events
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
