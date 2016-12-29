Rails.application.routes.draw do

	root 'users#new'

	resources :users do
		resources :posts, only: [:index, :new, :create]
	end

	get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'
	
end
