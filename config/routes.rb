Rails.application.routes.draw do
  get 'tasks/index'

  get 'tasks/show'

  get 'tasks/new'

  get 'tasks/edit'

  root 'static_pages#top'
  get '/signup', to: 'users#new'
  
  get    '/login', to: 'sessions#new'
  post   '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  
  resources :users
end
