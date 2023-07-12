Rails.application.routes.draw do
  devise_for :users, controllers: {
	registrations: "user/registrations",
	sessions: "user/sessions",
	omniauth_callbacks: "users/omniauth_callbacks"
  }

  devise_scope :user do
    get "/users/sign_in", to: "devise/sessions#new"
    get "/users/sign_out", to: "devise/sessions#destroy"
    get "/users/auth/spotify/callback", to: "users/omniauth_callbacks#spotify"
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :users

  root to: "home#index"
  # root to: redirect("/user/sign_in")

  # Defines the root path route ("/")
  # root "articles#index"
end
