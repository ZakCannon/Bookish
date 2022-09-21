Rails.application.routes.draw do
  resources :books
  resources :copies

  get 'books/:id/copy_edit', to: 'books#copy_edit'

  root "books#index"
end
