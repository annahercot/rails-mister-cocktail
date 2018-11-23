Rails.application.routes.draw do
  get 'doses/index'
  get 'doses/show'
  get 'doses/new'
  get 'cocktails/index'
  get 'cocktails/show'
  get 'cocktails/new'
  resources :cocktails do
    resources :doses, only: [:index, :show, :new, :create]
  end
  resources :doses, only: [:destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
