Rails.application.routes.draw do
  devise_for :users
  	resources :questions do
  		resources :answers, only:[:create]
  		resources :comequestions
  		resources :comeanswers
  	end
  	root 'questions#index'
end
