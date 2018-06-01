Rails.application.routes.draw do
  root 'task_manages#home'
  resources :tasks #do
  #  member do
  #    get :hoge
  #  end
  #end
  get '/index', to: 'tasks#index'
  #get '/new', to: 'tasks#new'
  #delete '/destroy', to: 'tasks#destroy'
  #get '/tasks/:id/edit', to: "tasks#edit"
end
