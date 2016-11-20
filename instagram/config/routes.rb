Rails.application.routes.draw do
  devise_for :users
  get 'main/home'

  resources :posts do
    resources :comments
    resources :likes
  end

  root 'main#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
