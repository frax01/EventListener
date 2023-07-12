Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: "user/registrations",
    sessions: "user/sessions",
    omniauth_callbacks: "user/omniauth_callbacks"
  }

  devise_scope :user do
    get "/users/sign_in", to: "devise/sessions#new"
    get "/users/sign_out", to: "devise/sessions#destroy"
    get "/users/auth/spotify/callback", to: "devise/omniauth_callbacks#spotify"
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :users
  resources :radunos

  root to: "home#index"
  # root to: redirect("/user/sign_in")

  # Defines the root path route ("/")
  # root "articles#index"

  #get '/homepage', to: 'homepage#index'
  #get '/radunos/:id/edit', to: 'radunos#update'
  ##get '/radunos/new', to: 'radunos#new'
  #get '/events/new', to: 'events#new'
#
#
  ##get '/auth/:provider/callback' => 'session#create'
  ##get '/auth/failure' => 'session#fail'
  ##get '/session/destroy' => 'session#destroy'
  ##post '/events/create', to: 'events#create'
  #get '/auth/failure' => 'sessions#fail'
  #get '/session/destroy' => 'sessions#destroy'
end
