Rails.application.routes.draw do
  devise_for :users

  devise_scope :user do
    get 'users/sign_out' => 'devise/sessions#destroy'
  end

  resources :books
  resources :copies

  get 'books/:id/copy_edit', to: 'books#copy_edit'
  get 'search', to: 'books#search'
  get 'search/result', to: 'books#search_result'

  root to: "books#index"
end
