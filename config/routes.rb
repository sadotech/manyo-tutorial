Rails.application.routes.draw do
  root 'task_manages#home'
  get '/list', to: 'tasks#list'
  get '/new', to: 'tasks#new'
  resources :tasks
end
