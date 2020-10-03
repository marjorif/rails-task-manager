Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "tasks", to: "tasks#index"
  #new always before the show/detail
  get "tasks/new", to: "tasks#new"
  get "tasks/:id", to: "tasks#detail", as: "task"
  post "tasks", to: "tasks#add"
end
