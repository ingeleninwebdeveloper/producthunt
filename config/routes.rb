Rails.application.routes.draw do

	get 'products', to: 'products#index'

	get '/products/new', to: 'products#new', as: 'new_product'
	post '/products', to: 'products#create'
<<<<<<< HEAD
	get '/products/:id', to: 'products#show', as: 'product'
	get '/products/:id/edit', to: 'products#edit', as: 'edit_product'
	patch '/products/:id', to: 'products#update'
	delete '/products/:id', to: 'products#destroy'
=======
	get '/products/:id', to: 'products#show'
>>>>>>> 6524c2ac6dfe6670ca48cc63b465900a70ed198d

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
