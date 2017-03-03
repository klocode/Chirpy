Rails.application.routes.draw do
  resources :posts
  resources :users do
    resources :posts, only: [:index]
  end

  post '/login' => 'sessions#create'
  post '/follow/:id' => 'follows#create'
  post '/unfollow/:id' => 'follows#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
