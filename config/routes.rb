Rails.application.routes.draw do
  # List all tasks
  get 'tasks', to: 'tasks#index'

    # Edit task
  get 'tasks/new', to: 'tasks#new'
  post 'tasks', to: 'tasks#create'

  # List a single task
  get 'tasks/:id', to: 'tasks#show', as: :task
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


  # Update task
  get 'tasks/:id/edit', to: 'tasks#edit', as: :task_edit
  patch 'tasks/:id', to: 'tasks#update'

  # Delete task
  delete 'tasks/:id', to: 'tasks#destroy', as: :task_destroy
end
