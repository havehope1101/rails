Rails.application.routes.draw do
  resources :articles
  # get 'pages/home'
  # get 'pages/about'
  get "/about", to: "pages#about"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root "pages#home"
  # Defines the root path route ("/")
  # root "articles#index"
  resources :articles#, only:[:show, :index]
end
