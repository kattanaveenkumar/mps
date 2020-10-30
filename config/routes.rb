Rails.application.routes.draw do
  root to: 'sentences#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :sentences, only: [:index, :show, :new, :create]
end
