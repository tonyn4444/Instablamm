Rails.application.routes.draw do

	get '/homepage' => 'homepage#index'

	root 'homepage#index'

	resources :users do
		resources :posts, only: [:index, :new, :create, :show]
	end

	get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'
	
end
