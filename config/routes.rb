Rails.application.routes.draw do
  devise_for :users
  resources :radunos
  resources :utentes
  resources :pages
  root :to => redirect('/utentes#index')

  #get '/auth/spotify/callback' => 'session#create'
  #get '/auth/failure' => 'session#fail'
  #get '/session/destroy' => 'session#destroy'

end
