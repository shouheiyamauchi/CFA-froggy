Rails.application.routes.draw do
  resources :ribbits do
    member do
      resources :comments
      get 'toggle_like', to: 'ribbits#toggle_like'
      get 'toggle_follow', to: 'ribbits#toggle_follow'
    end
  end
  devise_for :frogs
  root 'pages#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
