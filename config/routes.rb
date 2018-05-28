Rails.application.routes.draw do
  root 'task_manages#home'
  get '/task_list', to: 'task_manages#task_list'
  get '/new_task', to: 'task_manages#new_task'
end
