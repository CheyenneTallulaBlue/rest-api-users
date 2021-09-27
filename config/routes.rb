Rails.application.routes.draw do
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [:index, :new, :create, :show, :auth_password, :destroy]
  get 'users/:id/auth_password', to: 'users#auth_password', as: 'users_auth_password'

end
