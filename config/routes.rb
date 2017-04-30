Rails.application.routes.draw do
	resources :episodes
	resources :categories
	resources :series
	devise_for :users, :controllers => {registrations: 'registrations'} 
	root 'home#index'
	resources :users

  	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
