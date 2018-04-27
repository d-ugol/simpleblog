Rails.application.routes.draw do

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

	# [DU] this tells Rails to map requests to /welcome/index to the welcome controller's
	# index action.
  get 'welcome/index'

  # [DU] A resource is a term used for a collection of similar objects. You can CRID
  # items for a resource.
  resources :articles do
    resources :comments
  end

  # [DU] this tells Rails to map requests to the application root
  # to the welcome controller's index action.
  root 'welcome#index' 

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
