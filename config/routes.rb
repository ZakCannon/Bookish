Rails.application.routes.draw do
  devise_for :users

  devise_scope :user do
    get 'users/sign_out' => 'devise/sessions#destroy'
  end

  resources :books do
    resources :copies
    resources :reviews
  end



  post 'books/:id', to: 'books#show'
  patch 'books/:id/copies', to: 'copies#update'

  get 'search', to: 'books#search'
  get 'search/result', to: 'books#search_result'

  get 'stats', to: 'stats#index'

  root to: "books#index"
end
