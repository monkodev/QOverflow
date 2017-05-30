Rails.application.routes.draw do
  devise_for :users
  	resources :questions do
  		resources :answers, only:[:create]
  		resources :comequestions
  		resources :comeanswers
  		resources :voteanswers, only: [:create, :destroy]
  		resources :votequestions, only: [:create, :destroy]
  	end
  	root 'questions#index'
end