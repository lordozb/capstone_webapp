Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

resources :video, only: [:index, :show] do
	resources :analyze
end

get '/duration' => 'video#duration'
post 'acknowledge' => 'video#acknowledge'

get '/getStarted' => 'video#getStarted'
get '/explore' => 'video#explore'
get '/analyze' => 'analyze#index'

root 'video#index'
end
