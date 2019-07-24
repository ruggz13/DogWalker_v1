Rails.application.routes.draw do
  resources :walks, only: [:show, :new, :create, :delete]
  resources :owners
  resources :walkers
  resources :dogs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
