# Rails.application.routes.draw do
#   resources :restaurants
# end

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # list
  root to: 'tasks#index'
  get 'tasks', to: 'tasks#index'
  get 'tasks/new', to: 'tasks#new', as: :new_task
  get 'tasks/:id', to: 'tasks#show', as: :task

  # As a user, I can add a new task
  post 'tasks', to: 'tasks#create'

  # edit a task (mark as completed / update title & details)
  get 'tasks/:id/edit', to: 'tasks#edit', as: :task_edit
  patch 'tasks/:id', to: 'tasks#update'

  # remove a task
  delete 'tasks/:id', to: 'tasks#destroy'
end
