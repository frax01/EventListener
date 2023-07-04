Rails.application.routes.draw do
  devise_for :users
  resources :radunos
  resources :utentes
  resources :pages
  root :to => redirect('/utentes#index')
  devise_scope :user do
	get '/users/sign_out' => 'devise/sessions#destroy'
  end
end
