Rails.application.routes.draw do
  root 'pages#home'

  get 'admin', to: 'admin#index', as: :admin
  patch 'admin', to: 'admin#update'

  scope 'admin' do
    resources :samples, only: [:edit, :update]
    resources :parallaxes, only: [:edit, :update]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
