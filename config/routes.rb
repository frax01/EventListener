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

  resources :users
  resources :radunos
  resources :events

  root :to => redirect('/home')
  get '/home', to: 'home#index'
end
