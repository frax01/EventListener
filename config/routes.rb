Rails.application.routes.draw do
  devise_for :users, controllers: {
	omniauth_callbacks: 'users/omniauth_callbacks'
  }
  resources :radunos
  resources :utentes
  resources :pages
  root :to => redirect('/utentes#index')
  devise_scope :user do
	  get '/users/sign_out' => 'devise/sessions#destroy'
  end
  # get 'auth/:spotify/callback', to: 'sessions#create'
  # get '/login', to: 'sessions#new'
end
