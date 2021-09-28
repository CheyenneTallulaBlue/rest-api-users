Rails.application.routes.draw do
  root to: 'users#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [:index, :new, :create, :show, :auth_password, :is_secret_key, :destroy]
  get 'users/:id/auth_password', to: 'users#auth_password', as: 'users_auth_password'

  post 'users/:id/is_secret_key', to: 'users#is_secret_key', as: 'users_is_secret_key'

end
