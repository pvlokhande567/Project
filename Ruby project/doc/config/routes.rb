


Rails.application.routes.draw do
	
  get 'doc/index'

root 'doc#index'

resources :subjects do
	member do
		get :delete
	end
end

	root 'about#index'
   get 'about/index'
   get 'doc/hello'
   get 'doc/hello1'
   get 'doc/youtube'

  # get ':controller(/action(/:id))'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 end
 
