Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

resources :video, only: [:index, :show] do
	resources :analyze
end

get '/duration' => 'video#duration'
post 'acknowledge' => 'video#acknowledge'

get '/getStarted' => 'video#getStarted'
get '/explore' => 'video#explore'

root 'video#index'
end
