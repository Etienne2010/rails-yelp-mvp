Rails.application.routes.draw do
  root to: 'restaurant#index'
  resources :restaurants do
    resources :reviews, only: [ :index, :new, :create ]
  end
  resources :reviews, only: [ :show, :edit ]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
