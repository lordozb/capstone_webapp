Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

resources :video

get '/duration' => 'video#duration'
post 'acknowledge' => 'video#acknowledge'

root 'video#index'
end
