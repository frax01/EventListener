Rails.application.routes.draw do
  devise_for :users, controllers: {
	  omniauth_callbacks: 'users/omniauth_callbacks'
  }
  resources :radunos
  root :to => redirect('/homepage')
  devise_scope :user do
	  get '/users/sign_out' => 'devise/sessions#destroy'
  end

  get '/homepage', to: 'homepage#index'
  get '/radunos/new', to: 'radunos#new'


  get '/auth/:provider/callback' => 'session#create'
  get '/auth/failure' => 'session#fail'
  get '/session/destroy' => 'session#destroy'

end
