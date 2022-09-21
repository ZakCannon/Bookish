Rails.application.routes.draw do
  devise_for :users

  resources :books
  resources :copies

  get 'books/:id/copy_edit', to: 'books#copy_edit'

  root to: "books#index"
end
