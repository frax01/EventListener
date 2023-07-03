Rails.application.routes.draw do
  resources :radunos
  resources :utentes
  resources :pages
  root :to => redirect('/pages')

  get '/auth/:provider/callback' => 'session#create'
  get '/auth/failure' => 'session#fail'
  get '/session/destroy' => 'session#destroy'

end
