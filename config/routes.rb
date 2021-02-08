Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # root to: "tasks#index"
  # get "tasks/new", to: "tasks#new"
  # get "tasks/:id", to: "tasks#show", as: :show_task # as: :task va mettre le prefix task quand on fait rails routes
  # delete "tasks/:id", to: "tasks#destroy"
  # post "tasks", to: "tasks#create"
  # get "tasks/:id/edit", to: "tasks#edit", as: :edit_task
  # patch "tasks/:id", to: "tasks#update"
  resources :tasks
end
