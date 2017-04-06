Rails.application.routes.draw do
  resources :videos
  resources :photos
  resources :file_uploads
  resources :contacts
  resources :documents
  resources :todo_lists
	devise_for :users, :controllers => { registrations: 'registrations' }
	get 'welcome/unsigned_index'
	get 'welcome/signed_index'


	get 'welcome/add_new_object'

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
		root 'welcome#signed_index', as: "authenticated_root"
	end
	root 'welcome#unsigned_index'
 	
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
