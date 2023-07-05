Rails.application.routes.draw do
  devise_for :users
  resources :radunos
  resources :utentes
  root :to => redirect('/homepage')
  devise_scope :user do
	  get '/users/sign_out' => 'devise/sessions#destroy'
  end
  get '/homepage', to: 'homepage#index'
  get '/radunos/new', to: 'radunos#new'

end
