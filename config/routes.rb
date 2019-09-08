Rails.application.routes.draw do
  get 'posts/show'
  root 'posts#show'

  resources :posts, only: [:show] do
    resources :comments, only: [:index]
  end
end
