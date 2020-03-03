Rails.application.routes.draw do
  resources :lines, only: [:index, :show, :new, :edit, :update, :new, :create, :destroy]
  resources :pages, only: [:index, :show, :new, :edit, :update, :new, :create, :destroy]
  resources :users, only: [:index, :show, :new, :edit, :update, :new, :create, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
