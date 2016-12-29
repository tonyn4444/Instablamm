Rails.application.routes.draw do

	root 'users#new'

	resources :users do
		resources :posts, only: [:index, :new, :create]
	end
	
end
