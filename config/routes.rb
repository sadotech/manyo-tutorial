Rails.application.routes.draw do
  get "tasks/input"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "tasks#input"
end
