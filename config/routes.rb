Rails.application.routes.draw do
  resources :walks, only: [:show, :new, :create, :delete]
  resources :owners
  resources :walkers
  resources :dogs
  get '/', to: 'application#home', as: 'home'

  # routes for adding reviews to walks
  post '/walks/:id/walkerreting', to: 'walks#create_walker_rating', as: 'save_walker_rating'
  post '/walks/:id/dog', to: 'walks#create_dog_rating', as: 'save_dog_rating'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
