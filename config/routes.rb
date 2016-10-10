Rails.application.routes.draw do
  resources :documents
  resources :todo_lists
	devise_for :users, :controllers => { registrations: 'registrations' }
	get 'welcome/index'
	resources :notes 

	resources :todo_lists do
  		resources :todo_items do
  			member do
  				patch :complete
  			end
  		end
 	 end

	get '/logout', to: 'devise/sessions#destroy', as: :logout

	authenticated :user do
		root 'notes#index', as: "authenticated_root"
	end
	root 'welcome#index'
 	
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
