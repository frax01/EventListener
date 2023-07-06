Rails.application.routes.draw do
  devise_for :users, controllers: {
	omniauth_callbacks: 'users/omniauth_callbacks'
  }
  resources :radunos
  resources :utentes
  root :to => redirect('/homepage')
  devise_scope :user do
	  get '/users/sign_out' => 'devise/sessions#destroy'
  end
<<<<<<< HEAD
  get '/homepage', to: 'homepage#index'
  get '/radunos/new', to: 'radunos#new'

=======
  # get 'auth/:spotify/callback', to: 'sessions#create'
  # get '/login', to: 'sessions#new'
>>>>>>> origin/Spoti-Oauth
end
