Rails.application.routes.draw do
  root 'pages#home'

  resources :admin, only: [:index, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
