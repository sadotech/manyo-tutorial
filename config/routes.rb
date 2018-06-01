Rails.application.routes.draw do
  root 'task_manages#home'
  resources :tasks #do
  #  member do
  #    get :hoge
  #  end
  #end
  get '/index', to: 'tasks#index'
  get '/search', to: 'tasks#search'
  post '/search', to: 'tasks#search'
  #get '/new', to: 'tasks#new'
  #delete '/destroy', to: 'tasks#destroy'
  #get '/tasks/:id/edit', to: "tasks#edit"
end
