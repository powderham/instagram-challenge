Rails.application.routes.draw do
  get 'main/home'

  resources :posts do
    resources :comments
  end

  root 'main#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
