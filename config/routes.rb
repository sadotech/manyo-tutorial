Rails.application.routes.draw do
  root 'task_manages#home'
  get '/index', to: 'tasks#index'
  get '/new', to: 'tasks#new'
  resources :tasks
  delete '/destroy', to: 'tasks#destroy'
end
